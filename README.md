# R Package "cleandata"

[![CRAN status](https://www.r-pkg.org/badges/version/cleandata)](https://cran.r-project.org/package=cleandata) [![DOWNLOADSTOTAL](https://cranlogs.r-pkg.org/badges/grand-total/cleandata)](https://cranlogs.r-pkg.org/badges/grand-total/cleandata)


A collection of functions that work with data frame to inspect and manipulate data; and to keep track of data manipulation by producing log files.

Available on CRAN: https://cran.r-project.org/package=cleandata

Demonstration: [Wrangling Ames Housing Dataset](https://cran.r-project.org/web/packages/cleandata/vignettes/Demo.html)

*I planned to keep writing new demos and linking them in this Readme file.*

## New in V0.3.0

* Made parameter 'log' able to take value from a 'log_arg' variable in the parent environment (dynamic scoping) of a function
  * The old way of assigning value to 'log' is also supported
  * 'log' is the parameter to control producing log files

### List of Functions

* Inspection
  * inspect_map:	Classify The Columns of A Data Frame
  * inspect_na:		Find Out Which Columns Have Most NAs
  * inspect_smap:	A Simplified Thus Faster Version of inspect_map

* Imputation
  * impute_mean:	Impute Missing Values by Mean
  * impute_median:	Impute Missing Values by Median
  * impute_mode:	Impute Missing Values by Mode

* Encoding
  * encode_binary:	Encode Binary Data Into 0 and 1
  * encode_ordinal:	Encode Ordinal Data Into Integers
  * encode_onehot:	One Hot encoding

* Partitioning
  * partition_random:	Partition A Dataset Randomly

* Other
  * wh_dict:	Create Data Dictionary from Data Warehouse

## Installation

You can install from [CRAN](https://cran.r-project.org/package=cleandata):

```r
install.packages('cleandata')
```

Alternatively, you can download the source package from the release page of this GitHub repo.

```r
# place the source package in your work directory
install.packages('cleandata_0.3.0.tar.gz', repos = NULL, type="source")
```

## Usage

```r
# loading the package
library('cleandata')

# getting help
help(package = 'cleandata')

# getting demos
browseVignettes('cleandata')
```

## List of Top-level Contents

* DESCRIPTION: general Information of "cleandata"
* NAMESPACE: specifies what functions are accessible by users
* LICENSE: license file of "cleandata"
* NEWS.md: news of updates
* cran-comments.md: a record of correspondence with CRAN
* README.md: this file
* R/: source codes of "cleandata"
* man/: source codes of the documentation of "cleandata"
* vignettes/: source codes of the vignettes of "cleandata"

## Update History

* 07/18/2018: version 0.1.0 was submitted to CRAN
* 09/03/2018: version 0.2.0 was uploaded to GitHub
* 09/13/2018: version 0.2.0 was submitted to CRAN
* 11/30/2018: version 0.3.0 was submitted to CRAN
