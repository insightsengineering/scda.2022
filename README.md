# scda.2022: Synthetic CDISC Data Archive 2022

This R package contains synthetic CDISC data released during 2022.
This synthetic data can be used as test data when developing `teal` applications or statistical analysis functions and due to the data not been derived from a real clinical trial it provides an excellent method for generating reproducible examples when reporting errors.

Once this package is installed it is recommended to use the [`scda`](https://insightsengineering.github.io/scda) package to access this synthetic data rather than using this package directly.

The data name convention in this package is `<domain>_<?area?>_<added on date>` and you can query the available data with

```r
data(package = "scda.2022")
```

## Installation

For releases from August 2022 it is recommended that you [create and use a Github PAT](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to install the latest version of this package. Once you have the PAT, run the following:

```r
Sys.setenv(GITHUB_PAT = "your_access_token_here")
if (!require("remotes")) install.packages("remotes")
remotes::install_github("insightsengineering/scda.2022@*release")
```

A stable release of all `NEST` packages from June 2022 is also available [here](https://github.com/insightsengineering/depository#readme).

## Note

The data in this package is an accumulation over time of datasets that were needed for documentation and unit testing code. We do not attempt to ensure this data is reproducible. The git repository has the folder `data_raw` which has the scripts used to create some of the data.

[![Stargazers repo roster for @insightsengineering/scda.2022](https://reporoster.com/stars/insightsengineering/scda.2022)](https://github.com/insightsengineering/scda.2022/stargazers)
[![Forkers repo roster for @insightsengineering/scda.2022](https://reporoster.com/forks/insightsengineering/scda.2022)](https://github.com/insightsengineering/scda.2022/network/members)

## Stargazers over time

[![Stargazers over time](https://starchart.cc/insightsengineering/scda.2022.svg)](https://starchart.cc/insightsengineering/scda.2022)
