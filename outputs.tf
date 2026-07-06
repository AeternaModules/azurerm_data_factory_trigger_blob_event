output "data_factory_trigger_blob_events" {
  description = "All data_factory_trigger_blob_event resources"
  value       = azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events
}
output "data_factory_trigger_blob_events_activated" {
  description = "List of activated values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.activated]
}
output "data_factory_trigger_blob_events_additional_properties" {
  description = "List of additional_properties values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.additional_properties]
}
output "data_factory_trigger_blob_events_annotations" {
  description = "List of annotations values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.annotations]
}
output "data_factory_trigger_blob_events_blob_path_begins_with" {
  description = "List of blob_path_begins_with values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.blob_path_begins_with]
}
output "data_factory_trigger_blob_events_blob_path_ends_with" {
  description = "List of blob_path_ends_with values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.blob_path_ends_with]
}
output "data_factory_trigger_blob_events_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.data_factory_id]
}
output "data_factory_trigger_blob_events_description" {
  description = "List of description values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.description]
}
output "data_factory_trigger_blob_events_events" {
  description = "List of events values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.events]
}
output "data_factory_trigger_blob_events_ignore_empty_blobs" {
  description = "List of ignore_empty_blobs values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.ignore_empty_blobs]
}
output "data_factory_trigger_blob_events_name" {
  description = "List of name values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.name]
}
output "data_factory_trigger_blob_events_pipeline" {
  description = "List of pipeline values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.pipeline]
}
output "data_factory_trigger_blob_events_storage_account_id" {
  description = "List of storage_account_id values across all data_factory_trigger_blob_events"
  value       = [for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : v.storage_account_id]
}

