output "external_tables_id" {
  description = "Map of id values across all external_tables, keyed the same as var.external_tables except keys with no id are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "external_tables_auto_refresh" {
  description = "Map of auto_refresh values across all external_tables, keyed the same as var.external_tables except keys with no auto_refresh are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.auto_refresh if v.auto_refresh != null }
}
output "external_tables_aws_sns_topic" {
  description = "Map of aws_sns_topic values across all external_tables, keyed the same as var.external_tables except keys with no aws_sns_topic are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.aws_sns_topic if v.aws_sns_topic != null && length(v.aws_sns_topic) > 0 }
}
output "external_tables_column" {
  description = "Map of column values across all external_tables, keyed the same as var.external_tables except keys with no column are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.column if v.column != null && length(v.column) > 0 }
}
output "external_tables_comment" {
  description = "Map of comment values across all external_tables, keyed the same as var.external_tables except keys with no comment are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "external_tables_copy_grants" {
  description = "Map of copy_grants values across all external_tables, keyed the same as var.external_tables except keys with no copy_grants are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.copy_grants if v.copy_grants != null }
}
output "external_tables_database" {
  description = "Map of database values across all external_tables, keyed the same as var.external_tables except keys with no database are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.database if v.database != null && length(v.database) > 0 }
}
output "external_tables_file_format" {
  description = "Map of file_format values across all external_tables, keyed the same as var.external_tables except keys with no file_format are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.file_format if v.file_format != null && length(v.file_format) > 0 }
}
output "external_tables_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all external_tables, keyed the same as var.external_tables except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "external_tables_location" {
  description = "Map of location values across all external_tables, keyed the same as var.external_tables except keys with no location are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.location if v.location != null && length(v.location) > 0 }
}
output "external_tables_name" {
  description = "Map of name values across all external_tables, keyed the same as var.external_tables except keys with no name are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "external_tables_owner" {
  description = "Map of owner values across all external_tables, keyed the same as var.external_tables except keys with no owner are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "external_tables_partition_by" {
  description = "Map of partition_by values across all external_tables, keyed the same as var.external_tables except keys with no partition_by are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.partition_by if v.partition_by != null && length(v.partition_by) > 0 }
}
output "external_tables_pattern" {
  description = "Map of pattern values across all external_tables, keyed the same as var.external_tables except keys with no pattern are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.pattern if v.pattern != null && length(v.pattern) > 0 }
}
output "external_tables_refresh_on_create" {
  description = "Map of refresh_on_create values across all external_tables, keyed the same as var.external_tables except keys with no refresh_on_create are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.refresh_on_create if v.refresh_on_create != null }
}
output "external_tables_schema" {
  description = "Map of schema values across all external_tables, keyed the same as var.external_tables except keys with no schema are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "external_tables_table_format" {
  description = "Map of table_format values across all external_tables, keyed the same as var.external_tables except keys with no table_format are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.table_format if v.table_format != null && length(v.table_format) > 0 }
}
output "external_tables_tag" {
  description = "Map of tag values across all external_tables, keyed the same as var.external_tables except keys with no tag are omitted"
  value       = { for k, v in snowflake_external_table.external_tables : k => v.tag if v.tag != null && length(v.tag) > 0 }
}

