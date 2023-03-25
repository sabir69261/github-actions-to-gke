resource "google_container_cluster" "gke-test-cluster-01" {
  enable_shielded_nodes       = var.enable_shielded_nodes
  remove_default_node_pool    = var.remove_default_node_pool
  initial_node_count          = var.initial_node_count
  ip_allocation_policy {
    cluster_secondary_range_name  = var.cluster_secondary_range_name
    services_secondary_range_name = var.services_secondary_range_name
  }
  location = var.location
  logging_config {
    enable_components = var.enable_components
  }
  master_auth {
    client_certificate_config {
      issue_client_certificate = var.issue_client_certificate
    }
  }
  name               = var.name
  network            = var.network
  network_policy {
    enabled  = var.network_policy
  }
  node_locations  = var.node_locations
  private_cluster_config {
    enable_private_endpoint = var.enable_private_endpoint
    enable_private_nodes    = var.enable_private_nodes
    master_global_access_config {
      enabled = var.master_global_access
    }
  }
  project = var.project
  release_channel {
    channel = var.channel
  }
  subnetwork = var.subnetwork
  workload_identity_config {
    workload_pool = var.workload_pool
  }
}
resource "google_container_node_pool" "np-gke-e2-m" {
 autoscaling {
  max_node_count= var.max_node_count
  min_node_count= var.min_node_count
 }
  cluster            = google_container_cluster.gke-test-cluster-01.name
  location           = var.location
  project            = var.project
  management {
    auto_repair  = var.auto_repair
    auto_upgrade = var.auto_upgrade
  }
  max_pods_per_node = var.max_pods_per_node
  name              = var.nodepool_name
  node_config {
    disk_size_gb    = var.disk_size_gb
    disk_type       = var.disk_type
    image_type      = var.image_type
    local_ssd_count = var.local_ssd_count
    machine_type    = var.machine_type
    oauth_scopes    = var.oauth_scopes
    service_account = var.service_account
    shielded_instance_config {
      enable_integrity_monitoring = var.enable_integrity_monitoring
      enable_secure_boot          = var.enable_secure_boot
    }
  }
  node_count     = var.node_count
  upgrade_settings {
    max_surge       = var.max_surge
    max_unavailable = var.max_unavailable
  }
  version = var.node_version
}
