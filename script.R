dm <- Sys.getenv("data_model")
if (dm == "") stop("Need to supply data_model env variable")

path <- Sys.getenv("path")
if (path == "") stop("Need to supply path env variable")

# Set path for renv library within dca container
.libPaths("/home/shiny/.cache/R/renv/library/app-fec508d6/R-4.1/x86_64-pc-linux-gnu")

datacurator::write_dca_template_config(dm, path)
