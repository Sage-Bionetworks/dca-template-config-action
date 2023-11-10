#!/bin/sh -l

pwd
cd /srv/shiny-server/app
Rscript --no-environ -e "install.packages(c('dplyr', 'httr'))"
file=$(Rscript --vanilla -e 'source("R/template_config.R"); source("R/schematic_rest_api.R"); write_dca_template_config("$1", "$2")')
cat "file=$file" >> $GITHUB_OUTPUT
