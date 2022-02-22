# scda.2022: Synthetic CDISC Data Archive 2022

This R package contains synthetic CDISC data released during 2022.
This synthetic data can be used as test data when developing `teal` applications or statistical analysis functions and due to the data not been derived from a real clinical trial it provides an excellent method for generating reproducible examples when reporting errors.

Once this package is installed it is recommended to use the [scda](https://github.com/insightsengineering/scda) package to access this synthetic data rather
than using this package directly.

The data name convention in this package is `<domain>_<?area?>_<added on date>` and you can query the available data with

```r
data(package = "scda.2022")
```

## Installation

This repository requires a personal access token to install see here [creating and using PAT](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token). Once this is set up, to install the latest released version of the package run:

```r
Sys.setenv(GITHUB_PAT = "your_access_token_here")
if (!require("devtools")) install.packages("devtools")
devtools::install_github("insightsengineering/scda.2022@*release")
```

## Note

The data in this package is an accumulation over time of datasets that were needed for documentation and unit testing code. We do not attempt to provide reproducibility of the data. The git repository has the folder `data_raw` which has the scripts used to create some of the data.
