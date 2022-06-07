resource "google_compute_network" "vpc1" {
  name                    = var.vpcname
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
  project                 = var.project
}

resource "google_compute_subnetwork" "subnet1" {
  name          = var.subnet
  ip_cidr_range = var.cidr_range
  region        = "us-central1"
  project       = var.project
  network       = google_compute_network.vpc1.id
  secondary_ip_range {
    range_name    = "${var.subnet}-secondary-range"
    ip_cidr_range = "172.16.38.128/25"
  }
}

// data "google_compute_network" "fabsvpc1" {
//   name    = "fabsvpc1"
//   project = "fsalaman-sanbox"
// }

