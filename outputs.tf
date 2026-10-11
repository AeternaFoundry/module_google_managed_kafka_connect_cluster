output "managed_kafka_connect_clusters_id" {
  description = "Map of id values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no id are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_kafka_connect_clusters_capacity_config" {
  description = "Map of capacity_config values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no capacity_config are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => one(v.capacity_config) if v.capacity_config != null && length(v.capacity_config) > 0 }
}
output "managed_kafka_connect_clusters_connect_cluster_id" {
  description = "Map of connect_cluster_id values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no connect_cluster_id are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.connect_cluster_id if v.connect_cluster_id != null && length(v.connect_cluster_id) > 0 }
}
output "managed_kafka_connect_clusters_create_time" {
  description = "Map of create_time values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no create_time are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "managed_kafka_connect_clusters_deletion_policy" {
  description = "Map of deletion_policy values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no deletion_policy are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "managed_kafka_connect_clusters_effective_labels" {
  description = "Map of effective_labels values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no effective_labels are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "managed_kafka_connect_clusters_gcp_config" {
  description = "Map of gcp_config values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no gcp_config are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => one(v.gcp_config) if v.gcp_config != null && length(v.gcp_config) > 0 }
}
output "managed_kafka_connect_clusters_kafka_cluster" {
  description = "Map of kafka_cluster values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no kafka_cluster are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.kafka_cluster if v.kafka_cluster != null && length(v.kafka_cluster) > 0 }
}
output "managed_kafka_connect_clusters_labels" {
  description = "Map of labels values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no labels are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "managed_kafka_connect_clusters_location" {
  description = "Map of location values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no location are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "managed_kafka_connect_clusters_name" {
  description = "Map of name values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no name are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "managed_kafka_connect_clusters_project" {
  description = "Map of project values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no project are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.project if v.project != null && length(v.project) > 0 }
}
output "managed_kafka_connect_clusters_state" {
  description = "Map of state values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no state are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "managed_kafka_connect_clusters_terraform_labels" {
  description = "Map of terraform_labels values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no terraform_labels are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "managed_kafka_connect_clusters_update_time" {
  description = "Map of update_time values across all managed_kafka_connect_clusters, keyed the same as var.managed_kafka_connect_clusters except keys with no update_time are omitted"
  value       = { for k, v in google_managed_kafka_connect_cluster.managed_kafka_connect_clusters : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

