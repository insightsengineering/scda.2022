# scda.2022 0.1.5.9002

# scda.2022 0.1.5

### Enhancements

* Initialized `rcd_2023_07_07` data.
* Initialized `rcd_2023_03_17` data after 2023_03_17 release.
* Removed `teal` family packages from the `staged.dependencies`.

# scda.2022 0.1.4

### Enhancements

* Initialized `rcd_2022_10_13` data for 2022_10_13 release.
* Updated `rcd_2022_10_13` with new versions of `adpc` and `adab` to update formulas and match visits.
* Added new `EORTC QLQ-C30 V3` analysis dataset `adqlqc` to `rcd_2022_10_13`.

# scda.2022 0.1.3

### Enhancements

* Updated `rcd_2022_06_27` with a new version of `adpp`, adding columns `REGIMEN` and `PKARMCD`.
* Updated `rcd_2022_06_27` with a new version of `adtte`, adding column `lgTMATRSK` and new `PARAMCD`.
* Updated `rcd_2022_06_27` with a new version of `adab`, updating columns `ADAPBLFL`, `ABLFL`, `ADABLFL`, `PARCAT1` and `RELTMU`, 
  and adding new `PARAM` values and post-baseline visits.
* Updated `rcd_2022_06_27` with a new version of `adsl`, adding columns `AEWITHFL`, `ADTHAUT`, `TRT02A`, `TRT02P`, `TRT02SDTM`, 
  `TRT02EDTM`, `AP02SDTM`, `AP02EDTM`, `TRT01SDTM`, `TRT01EDTM`, `AP01SDTM`, and `AP01EDTM`.
* Updated `rcd_2022_06_27` with a new version of `admh`, adding column `ATIREL`.
* Updated `rcd_2022_06_27` with a new version of `adex`, adding columns `AENDTM`, `ASTDY`, `AENDY`, `EXDOSFRQ`, `EXROUTE`, `VISIT`, 
  `VISITDY`, `EXSTDTC`, `EXENDTC`, `EXSTDY`, and `EXENDY`.
* Updated `rcd_2022_06_27` with a new version of `adcm`, adding columns `CMSTRTPT`, `CMENRTPT`, `ADURN`, and `ADURU`.
* Updated `rcd_2022_06_27` with a new version of `adae`, adding columns `AESCONG`, `AESDISAB`, `AESHOSP`, `AESLIFE`, `AESMIE`, and `LDOSEDTM`.
* Updated `rcd` script to store datasets in separate `.RData` files.
* Updated `rcd_2022_06_27` with a new version of `adpp`, `adtte`, `adab`, `adsl`, `admh`, `adex`, `adcm`, and `adae`.

# scda.2022 0.1.1

### New features 

* Added new Anti-Drug Antibody Analysis dataset `adab`.

### Bug fixes

* Updated `rcd_2022_02_28` with all the `NA` and `""` to `""` in `adae$ANL01FL`.

### Enhancements
  
* Updated `rcd_2022_02_28` with a new version of `adpp`, adding default `PARAM`s and columns `PPSTINT` and `PPENINT`.
* Updated `rcd_2022_02_28` dataset `addv` with new columns `DVDECOD` and `DVSCAT`.
* Updated `rcd_2022_06_27` with a new version of `adpp`, adding more categories `Metabolite Drug X` and `Metabolite Drug Y` to `PPCAT`.
# scda.2022 0.1.0

* Initialize the package with data `rcd_2022_01_28`.
