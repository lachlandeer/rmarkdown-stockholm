## Building a stockholm themed slides
##
## Contributors @lachlandeer

import os, glob

# --- MACRO --- #
YOUR_PROJECT = "my_project"

# --- DICTIONARY --- #

STY_FILES = [os.path.splitext(os.path.basename(sty_files))[0]
                    for sty_files in glob.glob("src/slides/" +
                        "*.sty")]

print(STY_FILES)

# --- Variable Declarations ---- #
runR = "Rscript --no-save --no-restore --verbose"
logAll = "2>&1"

# --- Build Rules --- #
## run_rmd:  knits the Rmd file into output
rule run_rmd:
    input:
        runner    = "utils/knit_rmd.R",
        rmd_file  = "src/slides/test_presentation.Rmd",
        sty_files = expand("src/slides/" + "{iFile}.sty",
                            iFile = STY_FILES),
        logo      = "src/slides/logo.png"
    output:
        pdf = "out/" + YOUR_PROJECT + "-slides.pdf"
    log:
        "logs/slides.Rout"
    shell:
        "{runR} {input.runner} {input.rmd_file} {output.pdf} \
            > {log} {logAll}"
