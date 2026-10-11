output "database_application_vips_lookup_id" {
  description = "Map of id values across all database_application_vips_lookup, keyed the same as var.database_application_vips_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_application_vips.database_application_vips_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_application_vips_lookup_application_vips" {
  description = "Map of application_vips values across all database_application_vips_lookup, keyed the same as var.database_application_vips_lookup except keys with no application_vips are omitted"
  value       = { for k, v in data.oci_database_application_vips.database_application_vips_lookup : k => v.application_vips if v.application_vips != null && length(v.application_vips) > 0 }
}
output "database_application_vips_lookup_cloud_vm_cluster_id" {
  description = "Map of cloud_vm_cluster_id values across all database_application_vips_lookup, keyed the same as var.database_application_vips_lookup except keys with no cloud_vm_cluster_id are omitted"
  value       = { for k, v in data.oci_database_application_vips.database_application_vips_lookup : k => v.cloud_vm_cluster_id if v.cloud_vm_cluster_id != null && length(v.cloud_vm_cluster_id) > 0 }
}
output "database_application_vips_lookup_compartment_id" {
  description = "Map of compartment_id values across all database_application_vips_lookup, keyed the same as var.database_application_vips_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_database_application_vips.database_application_vips_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_application_vips_lookup_filter" {
  description = "Map of filter values across all database_application_vips_lookup, keyed the same as var.database_application_vips_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_application_vips.database_application_vips_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_application_vips_lookup_state" {
  description = "Map of state values across all database_application_vips_lookup, keyed the same as var.database_application_vips_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_database_application_vips.database_application_vips_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

