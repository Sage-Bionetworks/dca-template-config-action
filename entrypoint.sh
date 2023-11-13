#!/bin/sh -l

pwd
Rscript -e ".libPaths('/home/shiny/.cache/R/renv/library/app-fec508d6/R-4.1/x86_64-pc-linux-gnu'); datacurator::create_dca_template_config(Sys.getenv('data_model'))"
file=test
echo "file=$file" >> $GITHUB_OUTPUT
