output "data_factory_trigger_blob_events_activated" {
  description = "Map of activated values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.activated }
}
output "data_factory_trigger_blob_events_additional_properties" {
  description = "Map of additional_properties values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.additional_properties }
}
output "data_factory_trigger_blob_events_annotations" {
  description = "Map of annotations values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.annotations }
}
output "data_factory_trigger_blob_events_blob_path_begins_with" {
  description = "Map of blob_path_begins_with values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.blob_path_begins_with }
}
output "data_factory_trigger_blob_events_blob_path_ends_with" {
  description = "Map of blob_path_ends_with values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.blob_path_ends_with }
}
output "data_factory_trigger_blob_events_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.data_factory_id }
}
output "data_factory_trigger_blob_events_description" {
  description = "Map of description values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.description }
}
output "data_factory_trigger_blob_events_events" {
  description = "Map of events values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.events }
}
output "data_factory_trigger_blob_events_ignore_empty_blobs" {
  description = "Map of ignore_empty_blobs values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.ignore_empty_blobs }
}
output "data_factory_trigger_blob_events_name" {
  description = "Map of name values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.name }
}
output "data_factory_trigger_blob_events_pipeline" {
  description = "Map of pipeline values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.pipeline }
}
output "data_factory_trigger_blob_events_storage_account_id" {
  description = "Map of storage_account_id values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.storage_account_id }
}

