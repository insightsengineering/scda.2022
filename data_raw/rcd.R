system("git clone git@github.com:insightsengineering/random.cdisc.data.git")

releases <- c(
  # nolint start
  # "2022_01_28" = "7f2200332aab693d2ef4149a0f67b7708a2db516",
  # "2022_02_28" = "fc3620365f38c36e45880cbdebfe16508d902fa6",
  # "2022_06_27" = "c4f1ef31f816ddfe46f226df85f12cb77d85c8d6",
  # nolint end
  "2022_10_13" = "a87f6b958782d5397b274c9faddb16d1a386903b"
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
  v <- releases[i]
  rcd_dt <- paste0("rcd_", names(releases)[i])

  system(paste("git checkout", v))

  data_files <- list.files("data", pattern = "\\.RData$", full.names = TRUE)
  dfs <- lapply(data_files, loadRData)

  # To generate .RData files containing all datasets
  dfs_all <- dfs
  names(dfs_all) <- substring(tools::file_path_sans_ext(basename(data_files)), 2)
  final_all <- dfs_all[c("adsl", setdiff(names(dfs_all), "adsl"))]

  assign(rcd_dt, final_all)
  cl_all <- call("save", as.name(rcd_dt), file = paste0("../data/", rcd_dt, ".RData"), compress = "bzip2")
  eval(cl_all)

  # To generate .RData files containing individual datasets
  names(dfs) <- paste(rcd_dt, substring(tools::file_path_sans_ext(basename(data_files)), 2), sep = "_")
  nms <- c(paste(rcd_dt, "adsl", sep = "_"), setdiff(names(dfs), paste(rcd_dt, "adsl", sep = "_")))
  final <- dfs[nms]

  for (dat in nms) {
    assign(dat, final[[dat]])
    cl <- call("save", as.name(dat), file = paste0("../data/", dat, ".RData"), compress = "bzip2")
    eval(cl)
  }
}

setwd("..")
unlink("random.cdisc.data", recursive = TRUE)
