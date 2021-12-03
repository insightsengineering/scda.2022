system("git clone https://github.com/insightsengineering/random.cdisc.data.git")

releases <- c(
  #"2021_03_22" = "v0.3.8",
  #"2021_05_05" = "v0.3.10",
  #"2021_07_07" = "v0.3.11",
  "2021_10_13" = "v0.3.12"
)

# https://stackoverflow.com/questions/5577221/
#   how-can-i-load-an-object-into-a-variable-name-that-i-specify-from-an-r-data-file
loadRData <- function(fileName) { # nolint
  #loads an RData file, and returns it
  load(fileName)
  get(ls()[ls() != "fileName"])
}

setwd("random.cdisc.data/")

for (i in seq_along(releases)) {
  dt <- names(releases)[i]
  v <- releases[i]

  system(paste0("git checkout tags/", v))

  data_files <- list.files("data", pattern = "\\.RData$", full.names = TRUE)
  dfs <- lapply(data_files, loadRData)

  names(dfs) <- substring(tools::file_path_sans_ext(basename(data_files)), 2)

  final <- dfs[c("adsl", setdiff(names(dfs), "adsl"))]
  nm <- paste0("rcd_", dt)

  assign(nm, final)

  cl <- call("save", as.name(nm), file = paste0("../data/", nm, ".RData"), compress = "bzip2")
  eval(cl)
}

setwd("..")
unlink("random.cdisc.data", recursive = TRUE)
