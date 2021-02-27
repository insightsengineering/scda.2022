
library(random.cdisc.data)
library(magrittr)
library(tern)
library(dplyr)

RNGkind(sample.kind = "Rounding")

# create the new cached data sets
adsl <- radsl(seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adae <- radae(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adaette <- radaette(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adcm <- radcm(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adex <- radex(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adlb <- radlb(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
admh <- radmh(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adqs <- radqs(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adrs <- radrs(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adtte <- radtte(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
advs <- radvs(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adeg <- radeg(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())
adtr <- radtr(adsl, seed = 1, na_vars = list()) %>% `attr<-`("creation date", Sys.Date())


# ADSL ----
adsl1 <- df_explicit_na(adsl)

# Add additional disposition variables to adsl.
adsl2 <- adsl1 %>%
  mutate(
    COMPSTUD = sample(
      c("Y", "N"),
      size = nrow(adsl),
      replace = TRUE
    ) %>% as.factor(),
    STUDONS = sample(
      c("Alive: On Treatment", "Alive: In Follow-up", NA),
      size = nrow(adsl),
      replace = TRUE
    ) %>% as.factor(),
    STDDRS = sample(
      c("Death", "Lost To Follow-Up",
        "Protocol Violation", "Withdrawal By Subject",
        "Other"),
      size = nrow(adsl),
      replace = TRUE
    ) %>% as.factor(),
    GOTTRT = ifelse(!is.na(ACTARMCD), "Y", "N") %>%
      as.factor(),
    DISTRTFL = sample(
      c("Y", "N"),
      size = nrow(adsl),
      replace = TRUE
    ) %>% as.factor(),
    TRTDRS = sample(
      c("ADVERSE EVENT", "PROGRESSIVE DISEASE",
        "PHYSICIAN DECISION", "LACK OF EFFICACY",
        "OTHER"),
      size = nrow(adsl),
      replace = TRUE
    ) %>% as.factor(),
    STUDONS = case_when(COMPSTUD == "N" ~ STUDONS),
    STDDRS = case_when(COMPSTUD == "N" & is.na(STUDONS) ~ STDDRS),
    DISSTDFL = case_when(!is.na(STDDRS) ~ "Y"),
    DISTRTFL = case_when(GOTTRT == "Y" ~ DISTRTFL),
    TRTDRS = case_when(DISTRTFL == "Y" ~ TRTDRS),
    DRSCAT = case_when(
      TRTDRS %in% c("ADVERSE EVENT", "PHYSICIAN DECISION") ~ "Safety",
      !is.na(TRTDRS) ~ "Other"
    )
  ) %>% var_relabel(
    COMPSTUD = "Complete Study",
    STUDONS = "On-study Status",
    DISSTDFL = "Discontinued Study",
    STDDRS = "Reason for Study Discontinuation",
    GOTTRT = "Received Treatment",
    DISTRTFL = "Discontinued Treatment",
    TRTDRS = "Reason for Treatment Discontinuation",
    DRSCAT = "Subcategory for Treatment Discontinuation"
  )


ADSL__2021_03_01 <- adsl2
usethis::use_data(ADSL__2021_03_01, overwrite = TRUE)

# ADCM ----
adsl1 <- df_explicit_na(adsl)
adcm1 <- df_explicit_na(adcm)

adcm_labels <- var_labels(adcm1)

adcm_path1 <- adcm1 %>%
  mutate(
    ATC1 = paste0("ATCCLAS1 ", substr(CMDECOD,  9, 9)),
    ATC2 = paste0("ATCCLAS2 ", substr(CMDECOD,  9, 9)),
    ATC3 = paste0("ATCCLAS3 ", substr(CMDECOD,  9, 9)),
    ATC4 = paste0("ATCCLAS4 ", substr(CMDECOD,  9, 9))
  )

adcm_path2 <- adcm_path1 %>%
  filter(
    CMDECOD %in% c("medname A_1/3", "medname B_2/4", "medname B_3/4", "medname C_1/2")
  ) %>%
  mutate(
    ATC1 = paste(ATC1, "p2"),
    ATC2 = paste(ATC2, "p2"),
    ATC3 = paste(ATC3, "p2"),
    ATC4 = paste(ATC4, "p2")
  )

adcm_path3 <- adcm_path2 %>%
  filter(
    CMDECOD %in% c("medname B_2/4", "medname C_1/2")
  ) %>%
  mutate(
    ATC1 = paste(ATC1, "p3"),
    ATC2 = paste(ATC2, "p3"),
    ATC3 = paste(ATC3, "p3"),
    ATC4 = paste(ATC4, "p3")
  )

adcm_all <- rbind(
  adcm_path1,
  adcm_path2,
  adcm_path3
)

adcm_final <- adcm_all %>%
  group_by(STUDYID, USUBJID, CMSEQ) %>%
  slice(1) %>%
  ungroup()

var_labels(adcm_final) <- c(
  adcm_labels,
  "ATC1" = "Label for ATC1",
  "ATC2" = "Label for ATC2",
  "ATC3" = "Label for ATC3",
  "ATC4" = "Label for ATC4"
)

ADCM__2021_03_01 <- adcm_final
usethis::use_data(ADCM__2021_03_01, overwrite = TRUE)


# ADAE ----

ADAE__2021_03_01 <- adae
usethis::use_data(ADAE__2021_03_01, overwrite = TRUE)
