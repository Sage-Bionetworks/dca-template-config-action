#!/bin/sh -l

Rscript -e "message(list(a=Sys.getenv("data-model"), b=Sys.getenv("path"))); install.packages(c("remotes", "dplyr", "httr")); remotes::install_local("/srv/shiny-server/app"); datacurator::write_dca_template_config(Sys.getenv("data-model"), Sys.getenv("path"))"
