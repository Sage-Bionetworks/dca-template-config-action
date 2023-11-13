#!/bin/sh -l

sudo Rscript -e ".libPaths('/home/shiny/.cache/R/renv/library/app-fec508d6/R-4.1/x86_64-pc-linux-gnu'); datacurator::write_dca_template_config(Sys.getenv('data_model'), Sys.getenv('path'))"
