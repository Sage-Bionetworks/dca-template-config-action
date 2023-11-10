#!/bin/sh -l

cd /srv/shiny-server/app
Rscript -e "install.packages(c('dplyr', 'httr'))"
file=$(Rscript -e 'source("R/template-config.R"); write_dca_template_config("$1", "$2")')
cat "file=$file" >> $GITHUB_OUTPUT
