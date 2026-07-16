output "data_factory_trigger_blob_events_id" {
  description = "Map of id values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_trigger_blob_events_activated" {
  description = "Map of activated values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.activated if v.activated != null }
}
output "data_factory_trigger_blob_events_additional_properties" {
  description = "Map of additional_properties values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "data_factory_trigger_blob_events_annotations" {
  description = "Map of annotations values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_trigger_blob_events_blob_path_begins_with" {
  description = "Map of blob_path_begins_with values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.blob_path_begins_with if v.blob_path_begins_with != null && length(v.blob_path_begins_with) > 0 }
}
output "data_factory_trigger_blob_events_blob_path_ends_with" {
  description = "Map of blob_path_ends_with values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.blob_path_ends_with if v.blob_path_ends_with != null && length(v.blob_path_ends_with) > 0 }
}
output "data_factory_trigger_blob_events_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_trigger_blob_events_description" {
  description = "Map of description values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_trigger_blob_events_events" {
  description = "Map of events values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.events if v.events != null && length(v.events) > 0 }
}
output "data_factory_trigger_blob_events_ignore_empty_blobs" {
  description = "Map of ignore_empty_blobs values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.ignore_empty_blobs if v.ignore_empty_blobs != null }
}
output "data_factory_trigger_blob_events_name" {
  description = "Map of name values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_trigger_blob_events_pipeline" {
  description = "Map of pipeline values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.pipeline if v.pipeline != null && length(v.pipeline) > 0 }
}
output "data_factory_trigger_blob_events_storage_account_id" {
  description = "Map of storage_account_id values across all data_factory_trigger_blob_events, keyed the same as var.data_factory_trigger_blob_events"
  value       = { for k, v in azurerm_data_factory_trigger_blob_event.data_factory_trigger_blob_events : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}

