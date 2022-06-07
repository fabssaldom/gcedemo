output "subnet_id" {
  description = "Subnet ID for VMs"
  value       = google_compute_subnetwork.subnet1.id
}