#!/bin/sh -l

file=$(Rscript --vanilla -e 'datacurator::write_dca_template_config("$1", "$2")')
cat "file=$file" >> $GITHUB_OUTPUT
