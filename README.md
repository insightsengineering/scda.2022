
# Synthetic CDISC Data Archive 2021

This R package contains synthetic CDISC data that we accumulate over time in 2021. Once data is released it will not be changed anymore so that this data can be used for unit testing.


The data name convention is `<domain>_<?area?>_<added on date>`.

You can query the available data with 

```r
data(package = "scda.2021")
```

# Note

The data in this package is an accumulation over time of datasets that were needed for documentation & unit testing code. We don't attempt to provide reproducibilty of the data. The git repo has the folder `create_data` which might have the scripts to create some of the data.

