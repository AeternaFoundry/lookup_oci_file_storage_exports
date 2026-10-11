variable "file_storage_exports_lookup" {
  description = <<EOT
Map of file_storage_exports_lookup, attributes below
Optional:
    - compartment_id
    - export_set_id
    - file_system_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    export_set_id  = optional(string)
    file_system_id = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

