data "oci_database_application_vips" "database_application_vips_lookup" {
  for_each = var.database_application_vips_lookup

  cloud_vm_cluster_id = each.value.cloud_vm_cluster_id
  compartment_id      = each.value.compartment_id
  state               = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

