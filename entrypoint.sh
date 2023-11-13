#!/bin/sh -l

file=$(Rscript -e 'install.packages(c("remotes", "dplyr", "httr")); remotes::install_local("/srv/shiny-server/app"); datacurator::write_dca_template_config("$1", "$2")')
cat "file=$file" >> $GITHUB_OUTPUT
