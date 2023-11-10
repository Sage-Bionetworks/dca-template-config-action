#!/bin/sh -l

tmpfile=$(mktemp /tmp/config.XXXXXX)
Rscript -e 'datacurator::write_dca_template_config("$1", "$2")' >> $tmpfile
cat "file=$tmpfile" >> $GITHUB_OUTPUT
