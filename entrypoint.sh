#!/bin/sh -l

Rscript -e "message(list(a=\"$1\", b=\"$2\")); install.packages(c(\"remotes\", \"dplyr\", \"httr\")); remotes::install_local(\"/srv/shiny-server/app\"); datacurator::write_dca_template_config(\"$1\", \"$2\")"
