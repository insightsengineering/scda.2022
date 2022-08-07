# scda.2022 0.1.1.9011.2

### Enhancements

* Updated `rcd_2022_06_27` with a new version of `adpp`, adding columns `REGIMEN` and `PKARMCD`.
* Updated `rcd_2022_06_27` with a new version of `adtte`, adding column `lgTMATRSK` and new `PARAMCD`.
* Updated `rcd_2022_06_27` with a new version of `adab`, updating columns `ADAPBLFL`, `ABLFL`, `ADABLFL`, `PARCAT1` and `RELTMU`.
* Updated `rcd_2022_06_27` with a new version of `adab`, adding new `PARAM`s.
* Updated `rcd_2022_06_27` with new versions of `adsl`, `admh`, `adab`, `adex` and `adcm` after refactoring.

### Bug fixes

* Included post-baseline visits to `adab`.

# scda.2022 0.1.1

### New features 

* Added new Anti-Drug Antibody Analysis dataset `adab` to `rcd_2022_02_28`.
  
### Bug fixes

* Updated `rcd_2022_02_28` with all the `NA` and `""` to `""` in `adae$ANL01FL`.

### Enhancements
  
  * Updated `rcd_2022_02_28` with a new version of `adpp`, including additional default `PARAM`s and new columns `PPSTINT` and `PPENINT`.
  * Updated `rcd_2022_02_28` dataset `addv` with new columns `DVDECOD` and `DVSCAT`.
  * Updated `rcd_2022_06_27` with a new version of `adpp`, adding more categories `Metabolite Drug X` and `Metabolite Drug Y` to `PPCAT`.

# scda.2022 0.1.0

* Initialize the package with data `rcd_2022_01_28` which matches data as of 28/01/2022.
* Added new data: `rcd_2022_02_28`.
* Added new data: `rcd_2022_06_27`.
