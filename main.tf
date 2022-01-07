resource "google_compute_instance" "centos8vm1" {
  name         = "centos8vm1"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  project      = "fsalaman-sanbox"

  tags = ["name", "centos8vm1"]

  boot_disk {
    initialize_params {
      image = "centos-stream-8-v20211214"
    }
  }

  network_interface {
    network    = "fabsvpc1"
    subnetwork = google_compute_subnetwork.fabsv1sn3.id

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "sudo dnf -y upgrade && sudo dnf -y install git neofetch tmux curl wget python3-pip epel-release"
}
