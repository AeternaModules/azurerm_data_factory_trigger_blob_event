variable "data_factory_trigger_blob_events" {
  description = <<EOT
Map of data_factory_trigger_blob_events, attributes below
Required:
    - data_factory_id
    - events
    - name
    - storage_account_id
    - pipeline (block):
        - name (required)
        - parameters (optional)
Optional:
    - activated
    - additional_properties
    - annotations
    - blob_path_begins_with
    - blob_path_ends_with
    - description
    - ignore_empty_blobs
EOT

  type = map(object({
    data_factory_id       = string
    events                = set(string)
    name                  = string
    storage_account_id    = string
    activated             = optional(bool)
    additional_properties = optional(map(string))
    annotations           = optional(list(string))
    blob_path_begins_with = optional(string)
    blob_path_ends_with   = optional(string)
    description           = optional(string)
    ignore_empty_blobs    = optional(bool)
    pipeline = list(object({
      name       = string
      parameters = optional(map(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_blob_events : (
        length(v.pipeline) >= 1
      )
    ])
    error_message = "Each pipeline list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_blob_events : (
        alltrue([for x in v.events : contains(["Microsoft.Storage.BlobCreated", "Microsoft.Storage.BlobDeleted"], x)])
      )
    ])
    error_message = "must be one of: Microsoft.Storage.BlobCreated, Microsoft.Storage.BlobDeleted"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_blob_events : (
        v.annotations == null || (alltrue([for x in v.annotations : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_blob_events : (
        v.blob_path_begins_with == null || (length(v.blob_path_begins_with) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_blob_events : (
        v.blob_path_ends_with == null || (length(v.blob_path_ends_with) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_blob_events : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

