resource "google_compute_firewall" "firewall1" {
  name    = "test-firewall"
  network = google_compute_network.vpc1.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-9000"]
  }
  source_ranges = ["35.235.240.0/20","172.16.0.0/16"]
  target_tags = ["web", "linux"]
}
