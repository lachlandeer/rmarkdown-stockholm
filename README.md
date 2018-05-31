# Building Beamer Slides with the Stockholm Theme with Rmarkdown

A reproducible and easy-enough to use slide constructir with `Rmarkdown`, `knitr` and `snakemake.`

## How to Use

* Ensure Snakemake is installed (you need a python install to do this)
```
pip install snakemake
```
* Install R and Rstudio, see [here](https://pp4rs.github.io/installation-guide/r/).
* Install the R package `packrat` if you haven't already:
```
snakemake packrat_install
```
* Restore the R environment I use to build this repository
```
snakemake packrat_restore
```
* In the `Snakefile` update the variable `YOUR_PROJECT` at the top as required
*  Modify the Rmd file `slides/test_presentation.Rmd` as required
* Build the pdf using snakemake
```
snakemake
```
* If you want to remove the pdf you built, use the clean rule
```
snakemake clean
```

## Acknowledgements
* **@markolsense**: originally wrote the stockholm theme, [source code](https://github.com/markolsonse/sthlmBeamerTheme)


## LICENSE

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />


Tested on: Ubuntu: 16.04

Last Run: May 31, 2018
