system("git clone git@github.com:insightsengineering/random.cdisc.data.git")

releases <- c(
  # nolint start
  # "2022_01_28" = "7f2200332aab693d2ef4149a0f67b7708a2db516",
  # "2022_02_28" = "fc3620365f38c36e45880cbdebfe16508d902fa6",
  # nolint end
  "2022_06_27" = "e0ed1197d23f50bb4b8824e9e9266acf0373a554"
)

# https://stackoverflow.com/questions/5577221/
#   how-can-i-load-an-object-into-a-variable-name-that-i-specify-from-an-r-data-file
loadRData <- function(fileName) { # nolint
  # loads an RData file, and returns it
  base::load(fileName)
  get(ls()[ls() != "fileName"])
}

setwd("random.cdisc.data/")

for (i in seq_along(releases)) {
  dt <- names(releases)[i]
  v <- releases[i]

  system(paste("git checkout", v))

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
