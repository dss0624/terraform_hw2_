output "gateway_ip" {
  value = google_compute_subnetwork.my_subnet.gateway_address
}
output "subnet_self_link" {
  value = google_compute_subnetwork.my_subnet.self_link
}

output "subnet_id" {
  value = google_compute_subnetwork.my_subnet.id
}