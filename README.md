# scda.2022: Synthetic CDISC Data Archive 2022

<!-- start badges -->
[![Check 🛠](https://github.com/insightsengineering/scda.2022/actions/workflows/check.yaml/badge.svg)](https://insightsengineering.github.io/scda.2022/main/unit-test-report/)
[![Docs 📚](https://github.com/insightsengineering/scda.2022/actions/workflows/docs.yaml/badge.svg)](https://insightsengineering.github.io/scda.2022/)

![GitHub forks](https://img.shields.io/github/forks/insightsengineering/scda.2022?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/insightsengineering/scda.2022?style=social)

![GitHub commit activity](https://img.shields.io/github/commit-activity/m/insightsengineering/scda.2022)
![GitHub contributors](https://img.shields.io/github/contributors/insightsengineering/scda.2022)
![GitHub last commit](https://img.shields.io/github/last-commit/insightsengineering/scda.2022)
![GitHub pull requests](https://img.shields.io/github/issues-pr/insightsengineering/scda.2022)
![GitHub repo size](https://img.shields.io/github/repo-size/insightsengineering/scda.2022)
![GitHub language count](https://img.shields.io/github/languages/count/insightsengineering/scda.2022)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Current Version](https://img.shields.io/github/r-package/v/insightsengineering/scda.2022/main?color=purple\&label=package%20version)](https://github.com/insightsengineering/scda.2022/tree/main)
[![Open Issues](https://img.shields.io/github/issues-raw/insightsengineering/scda.2022?color=red\&label=open%20issues)](https://github.com/insightsengineering/scda.2022/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc)
<!-- end badges -->

This R package contains synthetic CDISC data released during 2022.
This synthetic data can be used as test data when developing `teal` applications, or statistical analysis functions. Due to the data not been derived from a real clinical trial, it provides an excellent method for generating reproducible examples when reporting errors.

Once this package is installed, it is recommended to use the [`scda`](https://insightsengineering.github.io/scda) package to access this synthetic data rather than using this package directly.

The data name convention in this package is `<domain>_<?area?>_<added on date>` and you can query the available data with

```r
data(package = "scda.2022")
```

## Installation

It is recommended that you [create and use a Github PAT](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to install the latest version of this package. Once you have the PAT, run the following:

```r
Sys.setenv(GITHUB_PAT = "your_access_token_here")
if (!require("remotes")) install.packages("remotes")
remotes::install_github("insightsengineering/scda.2022@*release")
```

A stable release of all `NEST` packages from June 2022 is also available [here](https://github.com/insightsengineering/depository#readme).

## Note

The data in this package is an accumulation of datasets over time that were needed for documentation and unit testing code. We do not attempt to ensure this data is reproducible. The git repository has the folder `data_raw` which contains the scripts used to create some of the data.

## Stargazers and Forkers

### Stargazers over time

[![Stargazers over time](https://starchart.cc/insightsengineering/scda.2022.svg)](https://starchart.cc/insightsengineering/scda.2022)

### Stargazers

[![Stargazers repo roster for @insightsengineering/scda.2022](https://reporoster.com/stars/insightsengineering/scda.2022)](https://github.com/insightsengineering/scda.2022/stargazers)

### Forkers

[![Forkers repo roster for @insightsengineering/scda.2022](https://reporoster.com/forks/insightsengineering/scda.2022)](https://github.com/insightsengineering/scda.2022/network/members)
