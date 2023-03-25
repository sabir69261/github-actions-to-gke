#VPC Vars
routing_mode                    = "GLOBAL"
private_ip_google_access        = "true"
project                         = "test-dev-apps"
region                          = "asia-south2"
name_vpc_network                = "test-vpc"
auto_create_subnetworks         = "false"
name_test_subnet                = "test-subnet"
ip_cidr_range_test              = "10.10.16.0/21"
gke_pod_test_ip                 = "10.101.0.0/16"
gke_svc_test_ip                 = "10.201.0.0/16"
gke_pod_test_name               = "sc-range-pod-test"
gke_svc_test_name               = "sc-range-svc-test"

# CloudNat Vars
router_name                        = "cr-test-01"
network                            = "test-vpc"
bgp_asn                            = "64519"
ip_count                           = "2"
nat_name                           = "nat-test-01"
nat_ip_allocate_option             = "MANUAL_ONLY"
source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

# firewall
direction               = "INGRESS"
priority                = 1000
iap_port                = ["22"]
iap_protocol            = "tcp"
iap_description         = "SSH access via IAP"
iap_name                = "fw-ssh-iap-01"
iap_ranges              = ["35.235.240.0/20"]
http_port               = ["80","443"]
http_protocol           = "tcp"
http_description        = "HTTP access to public"
http_name               = "fw-http-public-01"
http_ranges             = ["0.0.0.0/0"]
healthcheck_port        = []
healthcheck_protocol    = "tcp"
healthcheck_description = "Allow GCP Health Check probes"
healthcheck_name        = "fw-health-check-gcp-01"
healthcheck_ranges      = ["209.85.204.0/22","209.85.152.0/22","130.211.0.0/22","35.191.0.0/16"]


# GKE
name                           = "gke-test-cluster-01"
location                       = "asia-south2"
node_locations                 = ["asia-south2-a", "asia-south2-b",]
initial_node_count             = 1
channel                        = "REGULAR"
cluster_secondary_range_name   = "sc-range-pod-test"
services_secondary_range_name  = "sc-range-svc-test"
#network                       = "projects/test-dev-apps/global/networks/test-vpc"
subnetwork                     = "projects/test-dev-apps/regions/asia-south2/subnetworks/test-subnet"
enable_private_endpoint        = "false"
enable_private_nodes           = "false"
max_surge                      = "2"
max_unavailable                = "1"
enable_integrity_monitoring    = "true"
enable_secure_boot             = "true"
network_policy                 = "false"
master_global_access           = "false"
enable_shielded_nodes          = "true"
workload_pool                  = "test-dev-apps.svc.id.goog"
issue_client_certificate       = "false"
enable_components              = ["SYSTEM_COMPONENTS", "WORKLOADS"]
max_node_count                 = "2"
min_node_count                 = "1"
node_count                     = "1"
disk_size_gb                   = "100"
disk_type                      = "pd-balanced"
image_type                     = "COS_CONTAINERD"
local_ssd_count                = "0"
machine_type                   = "e2-medium"
max_pods_per_node              = "25"
service_account                = "709343907704-compute@developer.gserviceaccount.com"
oauth_scopes                   = ["https://www.googleapis.com/auth/cloud-platform"]
auto_repair                    = "true"
auto_upgrade                   = "true"
nodepool_name                  = "np-gke-e2-m"
node_version                   = "1.24.7-gke.900"




