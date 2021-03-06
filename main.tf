resource "google_compute_instance" "centos8vm1" {
  name         = var.vmname
  machine_type = "g1-small"
  zone         = var.zone
  project      = var.project

  tags = ["web", "linux"]

  boot_disk {
    initialize_params {
      image = var.imagename
    }
  }

  network_interface {
    network    = var.vpcname
    subnetwork = google_compute_subnetwork.subnet1.id
  }

  metadata = {
    name = var.vmname
  }

  metadata_startup_script = "sudo dnf -y upgrade ; sudo dnf -y install vim git neofetch tmux curl wget python3-pip epel-release"
}
