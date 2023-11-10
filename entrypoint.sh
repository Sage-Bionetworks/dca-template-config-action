#!/bin/sh -l

Rscript -e 'renv::restore("/srv/shiny-server/app")'
Rscript -e 'install.packages("/srv/shiny-server/app", repos = NULL, type = "source")'
file=$(Rscript -e 'datacurator::write_dca_template_config("$1", "$2")')
cat "file=$file" >> $GITHUB_OUTPUT
