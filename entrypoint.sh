#!/bin/sh -l

Rscript -e "install.packages(c('remotes', 'dplyr', 'httr')); remotes::install_local('/srv/shiny-server/app'); datacurator::create_dca_template_config(Sys.getenv('data_model'))"
