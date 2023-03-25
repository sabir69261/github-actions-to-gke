# Global vars
variable "project" {
  description = "Project ID"
  type        = string
}
variable "region" {
  description = "Name of the region where VPC is launched"
  type        = string
}


# VPC vars
variable "routing_mode" {
  description = "Type of Routing Mode"
  type        = string
}
variable "private_ip_google_access" {
  description = "VMs in this subnetwork without external IP addresses can access Google APIs and services by using Private Google Access"
  type        = string
}

variable "name_vpc_network" {
   description = "Name of the network"
   type        = string
}

variable "auto_create_subnetworks" {
  description = "Network creation mode- Auto or Manual"
  type        = bool
}

variable "name_test_subnet" {
   description = "Name of the app subnet"
   type        = string
}
variable "ip_cidr_range_test" {
  description = "Subnetwork internal IP address range"
  type        = string
}
variable "gke_pod_test_ip" {
  description = "GKE pod IP range"
  type        = string
}
variable "gke_svc_test_ip" {
  description = "GKE service IP range"
  type        = string
}
variable "gke_pod_test_name" {
  description = "GKE Pod name"
  type        = string
}
variable "gke_svc_test_name" {
  description = "GKE service name"
  type        = string
}

# Cloud Nat vars

variable "router_name" {
  description = "Name of the cloud router"
  type        = string
}
variable "network" {
  description = "Name of the network"
  type        = string
}

variable "bgp_asn" {
  description = "Autonomous system number for bgp"
    type        = number
}
variable "nat_name" {
  description = "Name of the cloud NAT"
}
variable "nat_ip_allocate_option" {
    description = "How external IPs should be allocated for this NAT"
    type        = string
}
variable "source_subnetwork_ip_ranges_to_nat" {
  description = "How NAT should be configured per Subnetwork"
  type        = string
}
variable "ip_count" {
  description = "Number of IP addresses to be created"
  type        = number
}

# firewalls

variable "direction" {
  description = "type of direction"
  type        = string
}

variable "priority" {
    description = "firewall rule priority"
    type        = number
}

variable "iap_port" {
  description = "list of ports to which this rule applies"
  type        = list(string) 
}
variable "iap_protocol" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "iap_description" {
  description = "Description of the firewall "
  type        = string
}
variable "iap_name" {
  description = "Name of the firewall"
  type        = string
}
variable "iap_ranges" {
  description = "Source IP ranges"
  type        = set(string)  
}
variable "http_port" {
  description = "list of ports to which this rule applies"
  type        = list(string) 
}
variable "http_protocol" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "http_description" {
  description = "Description of the firewall "
  type        = string
}
variable "http_name" {
  description = "Name of the firewall"
  type        = string
}
variable "http_ranges" {
  description = "Source IP ranges"
  type        = set(string)  
}
variable "healthcheck_port" {
  description = "list of ports to which this rule applies"
  type        = list(string) 
}
variable "healthcheck_protocol" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "healthcheck_description" {
  description = "Description of the firewall "
  type        = string
}
variable "healthcheck_name" {
  description = "Name of the firewall"
  type        = string
}
variable "healthcheck_ranges" {
  description = "Source IP ranges"
  type        = set(string)  
}


# GKE
variable "name" {
  description = "Name of the cluster"
  type        = string
}
variable "location" {
  description = "Name of the location"
  type        = string
}

variable "node_locations" {
  description = "locations in which nodes will be created"
  type        = list(string)
}
variable "remove_default_node_pool" {
  description = "Used to remove the default node pool"
  type        = bool
  default     = true
}
variable "initial_node_count" {
  description = "node count"
  type        = number
}
variable "channel" {
  description = "status of release channel"
  type        = string
}

variable "subnetwork" {
  description = "Name of the subnetwork"
  type        = string
}
variable "enable_shielded_nodes" {
  description = "shielded VM's to protect from attacker"
  type        = bool
}
variable "workload_pool" {
  description = "connect to Google API's"
  type        = string
}
variable "issue_client_certificate" {
  description = "The authentication information for accessing the Kubernetes master"
  type        = bool
}
variable "enable_components" {
  description = "Info about the logging configs"
  type        = list(string)
}
variable "min_node_count" {
  description = "Maximum number of nodes in the NodePool. Must be >= min_node_count."
  type        = number
}
variable "max_node_count" {
  description = "Minimum number of nodes in the NodePool. Must be >=0 and <= max_node_count."
  type        = number
}
variable "node_count" {
  description = "Nodes count"
  type        = number
}
variable "disk_size_gb" {
  description = "Size of the disk"
  type        = number
}
variable "disk_type" {
  description = "Type of the disk"
  type        = string
}
variable "local_ssd_count" {
  type = number
}
variable "image_type" {
  description = "Type of the image"
  type        = string
}
variable "machine_type" {
  description = "Type of the machine"
  type        = string
}
variable "service_account" {
  description = "About the service account"
  type        = string
}
variable "oauth_scopes" {
  description = "List of API's"
  type        = list(string)
}
variable "auto_repair" {
  description = "management of nodes"
  type        = bool
}
variable "auto_upgrade" {
  description = "management of nodes"
  type        = bool
}
variable "max_surge" {
  description = "upgrade settings"
  type        = number
}
variable "max_unavailable" {
  description = "upgrade settings"
  type        = number
}
variable "cluster_secondary_range_name" {
    description = "The IP address range for the cluster pod IPs"
    type        = string
}
variable "services_secondary_range_name" {
    description = "The IP address range for the cluster service IPs"
    type        = string
}
variable "enable_private_endpoint" {
    description = "The cluster's private endpoint is used as the cluster endpoint"
    type        = bool
}
variable "enable_private_nodes" {
    description = "Enables the private cluster feature, creating a private endpoint on the cluster"
    type        = bool
}
variable "enable_integrity_monitoring" {
   description = "Defines whether the instance has integrity monitoring enabled."
   type        = bool
}
variable "enable_secure_boot" {
   description = "Defines whether the instance has Secure Boot enabled"
   type        = bool
}
variable "max_pods_per_node" {
    description = "The maximum number of pods per node in this node pool"
    type        = number
}
variable "network_policy" {
    description = "whether network policy enabled or not"
    type      = bool
}
variable "master_global_access" {
  description = "whether the master cluster access globally or not "
  type        = bool
}
variable "nodepool_name" {
    description = "Name of the nodepool"
    type        = string
}
variable "node_version" {
  description = "Kubernetes version for the nodes in this pool"
  type        = string
}

