resource "snowflake_external_table" "external_tables" {
  for_each = var.external_tables

  database          = each.value.database
  file_format       = each.value.file_format
  location          = each.value.location
  name              = each.value.name
  schema            = each.value.schema
  auto_refresh      = each.value.auto_refresh
  aws_sns_topic     = each.value.aws_sns_topic
  comment           = each.value.comment
  copy_grants       = each.value.copy_grants
  partition_by      = each.value.partition_by
  pattern           = each.value.pattern
  refresh_on_create = each.value.refresh_on_create
  table_format      = each.value.table_format

  dynamic "column" {
    for_each = each.value.column
    content {
      as   = column.value.as
      name = column.value.name
      type = column.value.type
    }
  }

  dynamic "tag" {
    for_each = each.value.tag != null ? each.value.tag : []
    content {
      database = tag.value.database
      name     = tag.value.name
      schema   = tag.value.schema
      value    = tag.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

