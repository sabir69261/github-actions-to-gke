terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
resource "google_compute_network" "test-vpc" {
  name                            = var.name_vpc_network
  routing_mode                    = var.routing_mode
  project                         = var.project 
  auto_create_subnetworks         = var.auto_create_subnetworks
}

resource "google_compute_subnetwork" "test-subnet" {
  ip_cidr_range              = var.ip_cidr_range_test
  name                       = var.name_test_subnet
  network                    = "${google_compute_network.test-vpc.self_link}"
  project                    = var.project
  private_ip_google_access   = var.private_ip_google_access
  region                     = var.region
  secondary_ip_range {
    ip_cidr_range = var.gke_pod_test_ip
    range_name    = var.gke_pod_test_name
  }
  secondary_ip_range {
    ip_cidr_range = var.gke_svc_test_ip
    range_name    = var.gke_svc_test_name
  }
  }
