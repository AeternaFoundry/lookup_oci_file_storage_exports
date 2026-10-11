data "oci_file_storage_exports" "file_storage_exports_lookup" {
  for_each = var.file_storage_exports_lookup

  compartment_id = each.value.compartment_id
  export_set_id  = each.value.export_set_id
  file_system_id = each.value.file_system_id
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

