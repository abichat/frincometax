
<!-- README.md is generated from README.Rmd. Please edit that file -->

# frincometax

<!-- badges: start -->

[![version](https://img.shields.io/badge/version-0.0.0.9000-orange.svg)](commits/master)
[![lastcommit](https://img.shields.io/github/last-commit/abichat/frincometax.svg)](https://github.com/abichat/frincometax/commits/master)
<!-- badges: end -->

**frincometax** provides French income tax details from 2006 to 2020.

## Installation

You can install **frincometax** from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("abichat/frincometax")
```

## Data

``` r
library(frincometax)
rates
#>    year bracket    min    max currency  rate
#> 1  2020       1      0  10084    euros 0.000
#> 2  2020       2  10085  25710    euros 0.110
#> 3  2020       3  25711  73516    euros 0.300
#> 4  2020       4  73517 158122    euros 0.410
#> 5  2020       5 158122    Inf    euros 0.450
#> 6  2019       1      0  10064    euros 0.000
#> 7  2019       2  10065  27794    euros 0.140
#> 8  2019       3  27795  74517    euros 0.300
#> 9  2019       4  74518 157806    euros 0.410
#> 10 2019       5 157807    Inf    euros 0.450
#> 11 2018       1      0   9964    euros 0.000
#> 12 2018       2   9964  27519    euros 0.140
#> 13 2018       3  27519  73779    euros 0.300
#> 14 2018       4  73779 156244    euros 0.410
#> 15 2018       5 156244    Inf    euros 0.450
#> 16 2017       1      0   9807    euros 0.000
#> 17 2017       2   9807  27086    euros 0.140
#> 18 2017       3  27086  72617    euros 0.300
#> 19 2017       4  72617 153783    euros 0.410
#> 20 2017       5 153783    Inf    euros 0.450
#> 21 2016       1      0   9710    euros 0.000
#> 22 2016       2   9711  26818    euros 0.140
#> 23 2016       3  26819  71898    euros 0.300
#> 24 2016       4  71899 152260    euros 0.410
#> 25 2016       5 152260    Inf    euros 0.450
#> 26 2015       1      0   9700    euros 0.000
#> 27 2015       2   9700  26791    euros 0.140
#> 28 2015       3  26791  71826    euros 0.300
#> 29 2015       4  71826 152108    euros 0.410
#> 30 2015       5 152108    Inf    euros 0.450
#> 31 2014       1      0   9690    euros 0.000
#> 32 2014       2   9691  26764    euros 0.140
#> 33 2014       3  26765  71754    euros 0.300
#> 34 2014       4  71755 151956    euros 0.410
#> 35 2014       5 151956    Inf    euros 0.450
#> 36 2013       1      0   6011    euros 0.000
#> 37 2013       2   6012  11991    euros 0.055
#> 38 2013       3  11992  26631    euros 0.140
#> 39 2013       4  26632  71397    euros 0.300
#> 40 2013       5  71398 151200    euros 0.410
#> 41 2013       6 151200    Inf    euros 0.450
#> 42 2012       1      0   5963    euros 0.000
#> 43 2012       2   5964  11896    euros 0.055
#> 44 2012       3  11897  26420    euros 0.140
#> 45 2012       4  26421  70830    euros 0.300
#> 46 2012       5  70831 150000    euros 0.410
#> 47 2012       6 150000    Inf    euros 0.450
#> 48 2011       1      0   5963    euros 0.000
#> 49 2011       2   5964  11896    euros 0.055
#> 50 2011       3  11897  26420    euros 0.140
#> 51 2011       4  26421  70830    euros 0.300
#> 52 2011       5  70830    Inf    euros 0.410
#> 53 2010       1      0   5963    euros 0.000
#> 54 2010       2   5964  11896    euros 0.055
#> 55 2010       3  11897  26420    euros 0.140
#> 56 2010       4  26421  70830    euros 0.300
#> 57 2010       5  70830    Inf    euros 0.410
#> 58 2009       1      0   5875    euros 0.000
#> 59 2009       2   5876  11720    euros 0.055
#> 60 2009       3  11721  26030    euros 0.140
#> 61 2009       4  26031  69783    euros 0.300
#> 62 2009       5  69783    Inf    euros 0.400
#> 63 2008       1      0   5852    euros 0.000
#> 64 2008       2   5853  11673    euros 0.055
#> 65 2008       3  11674  25926    euros 0.140
#> 66 2008       4  25927  69505    euros 0.300
#> 67 2008       5  69505    Inf    euros 0.400
#> 68 2007       1      0   5687    euros 0.000
#> 69 2007       2   5688  11344    euros 0.055
#> 70 2007       3  11345  25195    euros 0.140
#> 71 2007       4  25196  67546    euros 0.300
#> 72 2007       5  67546    Inf    euros 0.400
#> 73 2006       1      0   5614    euros 0.000
#> 74 2006       2   5615  11198    euros 0.055
#> 75 2006       3  11199  24872    euros 0.140
#> 76 2006       4  24873  66679    euros 0.300
#> 77 2006       5  66679    Inf    euros 0.400
```
