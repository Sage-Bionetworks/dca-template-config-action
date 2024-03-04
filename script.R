dm <- Sys.getenv("data_model")
if (dm == "") stop("Need to supply `data_model` env variable")

file <- Sys.getenv("file")
if (file == "") stop("Need to supply `file` env variable")

data_model_labels <- Sys.getenv("data_model_labels", unset = "class_label")

# Set path for renv library within dca container
.libPaths("/home/shiny/.cache/R/renv/library/app-fec508d6/R-4.1/x86_64-pc-linux-gnu")

# include_data_types and exclude_data_types can't both be non NULL
include_data_types <- Sys.getenv("include_data_types")
if (include_data_types != "") {
  include_data_types <- strsplit(include_data_types, " ")
  include_data_types <- include_data_types[[1]]
} else include_data_types <- NULL

exclude_data_types <- Sys.getenv("exclude_data_types")
if (exclude_data_types != "") {
  exclude_data_types <- strsplit(exclude_data_types, " ")
  exclude_data_types <- exclude_data_types[[1]]
} else exclude_data_types <- NULL

datacurator::write_dca_template_config(data_model = dm,
                                       file = file,
                                       include_schemas = include_data_types,
                                       exclude_schemas = exclude_data_types,
                                       data_model_labels = data_model_labels)
