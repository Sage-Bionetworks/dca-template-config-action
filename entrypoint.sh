#!/bin/sh -l

Rscript -e 'install.packages("../app", repos = NULL)'
file=$(Rscript -e 'datacurator::write_dca_template_config("$1", "$2")')
cat "file=$file" >> $GITHUB_OUTPUT
