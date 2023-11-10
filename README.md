# DCA Template Config Action

This action creates a DCA template config file from a data model.

## Inputs

## `data-model`

**Required** URL of data model jsonld file.

## `path` 

Where to write the config.

## Outputs

## `file`

Diagnostic output from conversion.

## Example usage

uses: sage-bionetworks/dca-template-config-action@v1
with:
  data-model: 'https://raw.githubusercontent.com/Sage-Bionetworks/data-models/main/example.model.jsonld'
  path: 'dca-template-config.json'
