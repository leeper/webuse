# Import Stata 'webuse' Datasets #

This package provides a Stata-style `webuse()` function for importing named datasets from Stata's online collection.

## Package Installation ##

This package can be installed from R using `install.packages("webuse")` or from GitHub using **devtools**:

```R
if(!require("devtools")){
    install.packages("devtools")
    library("devtools")
}
install_github("leeper/webuse")
```

[![Build Status](https://travis-ci.org/leeper/webuse.svg?branch=master)](https://travis-ci.org/leeper/webuse)
[![CRAN Version](http://www.r-pkg.org/badges/version/webuse)](http://cran.r-project.org/package=webuse)
![Downloads](http://cranlogs.r-pkg.org/badges/webuse)

## Examples ##



Functionality is simple. Load **webuse** and then access any online Stata dataset using the `webuse()` function. This will assign the named dataset to the `.GlobalEnv` (or another environment, if specified):


```r
library("webuse")
webuse("auto")
head(auto)
```

```
##            make price mpg rep78 headroom trunk weight length turn displacement gear_ratio foreign
## 1   AMC Concord  4099  22     3      2.5    11   2930    186   40          121       3.58       0
## 2     AMC Pacer  4749  17     3      3.0    11   3350    173   40          258       2.53       0
## 3    AMC Spirit  3799  22    NA      3.0    12   2640    168   35          121       3.08       0
## 4 Buick Century  4816  20     3      4.5    16   3250    196   40          196       2.93       0
## 5 Buick Electra  7827  15     4      4.0    20   4080    222   43          350       2.41       0
## 6 Buick LeSabre  5788  18     3      4.0    21   3670    218   43          231       2.73       0
```

```r
webuse("uslifeexp")
head(uslifeexp)
```

```
##   year   le le_male le_female le_w le_wmale le_wfemale le_b le_bmale le_bfemale
## 1 1900 47.3    46.3      48.3 47.6     46.6       48.7 33.0     32.5       33.5
## 2 1901 49.1    47.6      50.6 49.4     48.0       51.0 33.7     32.2       35.3
## 3 1902 51.5    49.8      53.4 51.9     50.2       53.8 34.6     32.9       36.4
## 4 1903 50.5    49.1      52.0 50.9     49.5       52.5 33.1     31.7       34.6
## 5 1904 47.6    46.2      49.1 48.0     46.6       49.5 30.8     29.1       32.7
## 6 1905 48.7    47.3      50.2 49.1     47.6       50.6 31.3     29.6       33.1
```

The `webuselist` object contains a list of "core" Stata datasets:


```r
str(webuselist)
```

```
## List of 26
##  $ auto      : chr "1978 Automobile Data"
##  $ auto2     : chr "1978 Automobile Data"
##  $ autornd   : chr "Subset of 1978 Automobile Data"
##  $ bplong    : chr "fictional blood pressure data"
##  $ bpwide    : chr "fictional blood pressure data"
##  $ cancer    : chr "Patient Survival in Drug Trial"
##  $ census    : chr "1980 Census data by state"
##  $ citytemp  : chr "City Temperature Data"
##  $ citytemp4 : chr "City Temperature Data"
##  $ educ99gdp : chr "Education and GDP"
##  $ gnp96     : chr "U.S. GNP, 1967-2002"
##  $ lifeexp   : chr "Life expectancy, 1998"
##  $ network1  : chr "fictional network diagram data"
##  $ network1a : chr "fictional network diagram data"
##  $ nlsw88    : chr "U.S. National Longitudinal Study of Young Women (NLSW, 1988 extract)"
##  $ nlswide1  : chr "U.S. National Longitudinal Study of Young Women (NLSW, 1988 extract)"
##  $ pop2000   : chr "U.S. Census, 2000, extract"
##  $ sandstone : chr "Subsea elevation of Lamont sandstone in an area of Ohio"
##  $ sp500     : chr "S&P 500"
##  $ surface   : chr "NOAA Sea Surface Temperature"
##  $ tsline1   : chr "simulated time-series data"
##  $ tsline2   : chr "fictional data on calories consumed"
##  $ uslifeexp : chr "U.S. life expectancy, 1900-1999"
##  $ uslifeexp2: chr "U.S. life expectancy, 1900-1940"
##  $ voter     : chr "1992 presidential voter data"
##  $ xtline1   : chr "fictional data on calories consumed"
```
