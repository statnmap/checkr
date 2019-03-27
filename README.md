[![Travis-CI Build Status](https://travis-ci.org/dtkaplan/checkr.svg?branch=master)](https://travis-ci.org/dtkaplan/checkr)

# checkr: Checking student answers in an R-tutorial system

An R-tutorial system provides facilities for posing R-related questions to students, collecting the code that students write in reply, and providing hints as needed. Examples for R-tutorial systems are [DataCamp.com](DataCamp.com) and the [learnr](https://rstudio.github.io/learnr/) package from RStudio.

The `checktutorials` package supports a framework for the authors of tutorials to specify what is a correct answer, and to give formative feedback when answers fail to meet that specification. Functions are provided to enable `checktutorials` to be connected to `learnr` documents. 

You can install the latest version of this package from GitHub.

You will first need to install the `redpen` package, which contains functions that will likely be integrated into `rlang` eventually.

```r
devtools::install_github("lionel-/redpen")
devtools::install_github("statnmap/checktutorials")
```

See the package vignette for details and examples about using `checktutorials`.

## TODO

- Fix `check_blanks()`, `grab_bindings()`, `grab_bindings_anywhere()`
  + Then uncomment tests: look for all `skip_if_not(FALSE, "binding to be fixed")`

