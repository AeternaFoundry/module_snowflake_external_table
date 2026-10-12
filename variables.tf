variable "external_tables" {
  description = <<EOT
Map of external_tables, attributes below
Required:
    - database
    - file_format
    - location
    - name
    - schema
    - column (block):
        - as (required)
        - name (required)
        - type (required)
Optional:
    - auto_refresh
    - aws_sns_topic
    - comment
    - copy_grants
    - partition_by
    - pattern
    - refresh_on_create
    - table_format
    - tag (block):
        - database (optional)
        - name (required)
        - schema (optional)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database          = string
    file_format       = string
    location          = string
    name              = string
    schema            = string
    auto_refresh      = optional(bool)
    aws_sns_topic     = optional(string)
    comment           = optional(string)
    copy_grants       = optional(bool)
    partition_by      = optional(list(string))
    pattern           = optional(string)
    refresh_on_create = optional(bool)
    table_format      = optional(string)
    column = list(object({
      as   = string
      name = string
      type = string
    }))
    tag = optional(list(object({
      database = optional(string)
      name     = string
      schema   = optional(string)
      value    = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.external_tables : (
        length(v.column) >= 1
      )
    ])
    error_message = "Each column list must contain at least 1 items"
  }
}

