output "name_vpc_network" {
    value = google_compute_network.test-vpc.name
  
}
output "vpc_self_link" {
    value = google_compute_network.test-vpc.self_link
  
}
output "subnetwork_self_link" {
    value = google_compute_subnetwork.test-subnet.self_link
  
}