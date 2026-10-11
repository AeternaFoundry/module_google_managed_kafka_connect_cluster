resource "google_managed_kafka_connect_cluster" "managed_kafka_connect_clusters" {
  for_each = var.managed_kafka_connect_clusters

  connect_cluster_id = each.value.connect_cluster_id
  kafka_cluster      = each.value.kafka_cluster
  location           = each.value.location
  deletion_policy    = each.value.deletion_policy
  labels             = each.value.labels
  project            = each.value.project

  capacity_config {
    memory_bytes = each.value.capacity_config.memory_bytes
    vcpu_count   = each.value.capacity_config.vcpu_count
  }

  gcp_config {
    access_config {
      dynamic "network_configs" {
        for_each = each.value.gcp_config.access_config.network_configs
        content {
          additional_subnets = network_configs.value.additional_subnets
          dns_domain_names   = network_configs.value.dns_domain_names
          primary_subnet     = network_configs.value.primary_subnet
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

