variable "database_application_vips_lookup" {
  description = <<EOT
Map of database_application_vips_lookup, attributes below
Required:
    - cloud_vm_cluster_id
    - compartment_id
Optional:
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    cloud_vm_cluster_id = string
    compartment_id      = string
    state               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

