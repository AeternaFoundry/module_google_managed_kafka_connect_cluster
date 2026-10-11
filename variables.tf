variable "managed_kafka_connect_clusters" {
  description = <<EOT
Map of managed_kafka_connect_clusters, attributes below
Required:
    - connect_cluster_id
    - kafka_cluster
    - location
    - capacity_config (block):
        - memory_bytes (required)
        - vcpu_count (required)
    - gcp_config (block):
        - access_config (required, block):
            - network_configs (required, block):
                - additional_subnets (optional)
                - dns_domain_names (optional)
                - primary_subnet (required)
Optional:
    - deletion_policy
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    connect_cluster_id = string
    kafka_cluster      = string
    location           = string
    deletion_policy    = optional(string)
    labels             = optional(map(string))
    project            = optional(string)
    capacity_config = object({
      memory_bytes = string
      vcpu_count   = string
    })
    gcp_config = object({
      access_config = object({
        network_configs = list(object({
          additional_subnets = optional(list(string))
          dns_domain_names   = optional(list(string))
          primary_subnet     = string
        }))
      })
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.managed_kafka_connect_clusters : (
        length(v.gcp_config.access_config.network_configs) >= 1
      )
    ])
    error_message = "Each network_configs list must contain at least 1 items"
  }
}

