variable "project" {
  description = "Project ID"
  type        = string
}
variable "routing_mode" {
  description = "Type of Routing Mode"
  type        = string
}
variable "private_ip_google_access" {
  description = "VMs in this subnetwork without external IP addresses can access Google APIs and services by using Private Google Access"
  type        = string
}
variable "region" {
  description = "Name of the region where VPC is launched"
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