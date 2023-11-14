dm <- Sys.getenv("data_model")
if (dm == "") stop("Need to supply `data_model` env variable")

file <- Sys.getenv("file")
if (file == "") stop("Need to supply `file` env variable")

# Set path for renv library within dca container
.libPaths("/home/shiny/.cache/R/renv/library/app-fec508d6/R-4.1/x86_64-pc-linux-gnu")

# include_schemas and exclude_schemas can't both be non NULL
include_schemas <- Sys.getenv("include_schemas")
ifelse(include_schemas == "") include_schemas <- NULL
if (!is.null(include_schemas)) {
  include_schemas <- strsplit(include_schemas, " ")
  include_schemas <- include_schemas[[1]]
}

exclude_schemas <- Sys.getenv("exclude_schemas")
if (exclude_schemas == "") exclude_schemas <- NULL
if (!is.null(exclude_schemas)) {
  exclude_schemas <- strsplit(exclude_schemas, " ")
  exclude_schemas <- exclude_schemas[[1]]
}

datacurator::write_dca_template_config(data_model = dm,
                                       file = file,
                                       include_schemas = include_schemas,
                                       exclude_schemas = exclude_schemas)
