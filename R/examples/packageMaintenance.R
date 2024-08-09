library(rTemplatePackage)

# init stuff --------------------------------------------------------------
# install.packages(c("devtools", "usethis"))
usethis::use_mit_license()
usethis::use_testthat()

# https://r-pkgs.org/description.html#sec-description-authors-at-r
# Authors@R: person("tom", "turbo", email = "tom_turbo@gmail.com", role = c("aut", "cre"))
person("tom", "turbo", email = "tom_turbo@gmail.com", role = c("aut", "cre"))

# README.md ------------------------------------------------------------------
# init
usethis::use_readme_rmd()

# build README.Rmd to md
devtools::build_readme()

# dev ---------------------------------------------------------------------
devtools::load_all()
devtools::check()
devtools::document()
devtools::install()

# tests -------------------------------------------------------------------
# Learn more about the roles of various files in:
# * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
# * https://testthat.r-lib.org/articles/special-files.html
# run all tests
devtools::test()
# run a single test-file
testthat::test_file('tests/testthat/test-baseFunctions.R')

# Vignettes ---------------------------------------------------------------
# https://r-pkgs.org/vignettes.html#sec-vignettes-how-built-checked

# create new vignette
usethis::use_vignette("baseFunctions")

# render one vignette
options(rmarkdown.html_vignette.check_title = FALSE) # because a longer title is better
devtools::build_rmd("vignettes/baseFunctions.Rmd")

# install package
options(rmarkdown.html_vignette.check_title = FALSE) # because a longer title is better
devtools::install(build_vignettes = TRUE)

# build package to singel bundled file in ../
devtools::build()

vignette(package = 'rTemplatePackage') # list all vignettes
vignette(topic = 'baseFunctions', package = 'rTemplatePackage') # list all vignettes

# package -----------------------------------------------------------------
install.packages("~/git/github/rTemplatePackage_0.1.0.tar.gz", repos = NULL, type = "source")
remove.packages('rTemplatePackage')

# data_raw ----------------------------------------------------------------
# for bigger data files in the package
# https://r-pkgs.org/data.html#sec-data-data-raw
usethis::use_data_raw()
