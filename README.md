![Project Status](https://www.repostatus.org/badges/latest/active.svg)
[![r-universe
name](https://ices-tools-prod.r-universe.dev/badges/:name)](https://ices-tools-prod.r-universe.dev)
[![version
number](https://ices-tools-prod.r-universe.dev/badges/icesSD)](https://ices-tools-prod.r-universe.dev/icesSD)
![branch version
number](https://img.shields.io/badge/branch_version-2.1.0-blue)
[![GitHub
release](https://img.shields.io/github/release/ices-tools-prod/icesSD.svg?maxAge=6000)]()
[![License](https://img.shields.io/badge/license-GPL%20(%3E%3D%202)-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)

<!---
[![CRAN Status](http://r-pkg.org/badges/version/icesSD)](https://cran.r-project.org/package=icesSD)
[![CRAN Monthly](http://cranlogs.r-pkg.org/badges/icesSD)](https://cran.r-project.org/package=icesSD)
[![CRAN Total](http://cranlogs.r-pkg.org/badges/grand-total/icesSD)](https://cran.r-project.org/package=icesSD)
--->

[<img align="right" alt="ICES Logo" width="17%" height="17%" src="http://ices.dk/_layouts/15/1033/images/icesimg/iceslogo.png">](http://ices.dk)

### icesSD

icesSD provides R functions that access the [web
services](https://sd.ices.dk/services/) of the
[ICES](https://www.ices.dk) [Stock Assessment
Graphs](https://sd.ices.dk) database.

icesSD is implemented as an [R](https://www.r-project.org) package and
is currently hosted on
[r-universe](https://ices-tools-prod.r-universe.dev)

We plan to submit icesSD to CRAN in the near future.

<!---
available on [CRAN](https://cran.r-project.org/package=icesSD).
--->

### Installation

icesSD can be installed from CRAN using the `install.packages` command:

``` r
install.packages("icesSD", repos = c("https://ices-tools-prod.r-universe.dev", "https://cloud.r-project.org"))
```

### Usage

For a summary of the package:

``` r
library(icesSD)
?icesSD
```

### References

ICES Stock Database: <http://sd.ices.dk>

ICES Stock Database web services: <http://sd.ices.dk/services/>

### Development

icesSD is developed openly on
[GitHub](https://github.com/ices-tools-prod/icesSD).

Feel free to open an
[issue](https://github.com/ices-tools-prod/icesSD/issues) there if you
encounter problems or have suggestions for future versions.

The current development version can be installed using:

``` r
library(devtools)
install_github("ices-tools-prod/icesSD@development")
```
