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
    activated             = optional(bool) # Default: true
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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_trigger_blob_event's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: events[*]
  #   condition: contains(["Microsoft.Storage.BlobCreated", "Microsoft.Storage.BlobDeleted"], value)
  #   message:   must be one of: Microsoft.Storage.BlobCreated, Microsoft.Storage.BlobDeleted
  # path: pipeline.name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: annotations[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: blob_path_begins_with
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: blob_path_ends_with
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
}

