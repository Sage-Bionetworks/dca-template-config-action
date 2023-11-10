#!/bin/sh -l

pwd
cd /srv/shiny-server/app
Rscript --vanilla -e "install.packages(c('dplyr', 'httr'))"
file=$(Rscript --vanilla -e 'source("R/template_config.R"); write_dca_template_config("$1", "$2")')
cat "file=$file" >> $GITHUB_OUTPUT
