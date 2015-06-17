# Import Stata 'webuse' Datasets #

This package provides a Stata-style `webuse()` function for importing named datasets from Stata's online collection.

## Package Installation ##

This package can be installed from GitHub using **devtools**:

```R
if(!require("devtools")){
    install.packages("devtools")
    library("devtools")
}
install_github("leeper/webuse")
```

[![Build Status](https://travis-ci.org/leeper/webuse.png?branch=master)](https://travis-ci.org/leeper/webuse)
![Downloads](http://cranlogs.r-pkg.org/badges/webuse)

## Examples ##

```R
library("webuse")
webuse("auto")
ls()
## [1] "auto"
head(auto)
##            make price mpg rep78 headroom trunk weight length turn displacement gear_ratio foreign
## 1   AMC Concord  4099  22     3      2.5    11   2930    186   40          121       3.58       0
## 2     AMC Pacer  4749  17     3      3.0    11   3350    173   40          258       2.53       0
## 3    AMC Spirit  3799  22    NA      3.0    12   2640    168   35          121       3.08       0
## 4 Buick Century  4816  20     3      4.5    16   3250    196   40          196       2.93       0
## 5 Buick Electra  7827  15     4      4.0    20   4080    222   43          350       2.41       0
## 6 Buick LeSabre  5788  18     3      4.0    21   3670    218   43          231       2.73       0
 
webuse("uslifeexp")
ls()
## [1] "auto"       "uslifeexp"
head(uslifeexp)
##   year   le le_male le_female le_w le_wmale le_wfemale le_b le_bmale le_bfemale
## 1 1900 47.3    46.3      48.3 47.6     46.6       48.7 33.0     32.5       33.5
## 2 1901 49.1    47.6      50.6 49.4     48.0       51.0 33.7     32.2       35.3
## 3 1902 51.5    49.8      53.4 51.9     50.2       53.8 34.6     32.9       36.4
## 4 1903 50.5    49.1      52.0 50.9     49.5       52.5 33.1     31.7       34.6
## 5 1904 47.6    46.2      49.1 48.0     46.6       49.5 30.8     29.1       32.7
## 6 1905 48.7    47.3      50.2 49.1     47.6       50.6 31.3     29.6       33.1
```