dm <- Sys.getenv("data_model")
if (dm == "") stop("Need to supply `data_model` env variable")

file <- Sys.getenv("filename")
if (file == "") stop("Need to supply `file` env variable")

# Set path for renv library within dca container
.libPaths("/home/shiny/.cache/R/renv/library/app-fec508d6/R-4.1/x86_64-pc-linux-gnu")

# include_schemas and exclude_schemas can't both be non NULL
if (Sys.getenv("include_schemas") == "") include_schemas <- NULL
if (Sys.getenv("exclude_schemas") == "") exclude_schemas <- NULL

datacurator::write_dca_template_config(data_model = dm,
                                       file = file,
                                       include_schemas = include_schemas,
                                       exclude_schemas = exclude_schemas)
