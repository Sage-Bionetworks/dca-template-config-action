# DCA Template Config Action

This action creates a DCA template config file from a data model.

## Inputs

## `data-model`

**Required** URL of data model jsonld file.

## `file` 

**Required** File to write the config.

## `include_schemas`

Space-separated list of schemas to include in output. Can't be used with exclude_schemas.

## `exclude_schemas`

Space-separated list of schemas to exclude from output. Can't be used with include_schemas.

## Outputs

## `result`

Diagnostic output from conversion.

## Example usage

Generate a config from all schemas in a data model 

uses: sage-bionetworks/dca-template-config-action@main
env:
  data-model: 'https://raw.githubusercontent.com/Sage-Bionetworks/data-models/main/example.model.jsonld'
  file: 'dca-template-config.json'
  
Only include Patient and Biospecimen

uses: sage-bionetworks/dca-template-config-action@main
env:
  data-model: 'https://raw.githubusercontent.com/Sage-Bionetworks/data-models/main/example.model.jsonld'
  file: 'dca-template-config.json'
  include_schemas: 'Patient Biospecimen'

Exclude Patient from output

uses: sage-bionetworks/dca-template-config-action@main
env:
  data-model: 'https://raw.githubusercontent.com/Sage-Bionetworks/data-models/main/example.model.jsonld'
  file: 'dca-template-config.json'
  exclude_schemas: 'Patient'