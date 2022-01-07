resource "google_compute_subnetwork" "fabsv1sn3" {
  name          = "fabsv1sn3"
  ip_cidr_range = "172.16.149.0/25"
  region        = "us-central1"
  project       = "fsalaman-sanbox"
  network       = data.google_compute_network.fabsvpc1.id
}

data "google_compute_network" "fabsvpc1" {
  name    = "fabsvpc1"
  project = "fsalaman-sanbox"
}
