# R Package "cleandata"

[![CRAN status](https://www.r-pkg.org/badges/version/cleandata)](https://cran.r-project.org/package=cleandata) [![DOWNLOADSTOTAL](https://cranlogs.r-pkg.org/badges/grand-total/cleandata)](https://cranlogs.r-pkg.org/badges/grand-total/cleandata)


A collection of functions that work with data frame to inspect, impute, encode, and partition data. The functions for imputation, encoding, and partitioning can produce log files to help you keep track of data manipulation process.

Available on CRAN: https://cran.r-project.org/package=cleandata

Demonstration: [Wrangling Ames Housing Dataset](http://rpubs.com/neilalien/rpkgcd020demo01)

*I planned to keep writing new demos and linking them in this Readme file.*

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

## Installation

You can install from [CRAN](https://cran.r-project.org/package=cleandata) (submission is scheduled to Sep 11 due to a CRAN vacation):

```r
install.packages('cleandata')
```

Alternatively, you can download the source package from the release page of this GitHub repo.

```r
# place the source package in your work directory
install.packages('cleandata_0.2.0.tar.gz', repos = NULL, type="source")
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

* 07/18/2018: version 0.1.0 submitted to CRAN
* 09/03/2018: version 0.2.0 uploaded to GitHub
