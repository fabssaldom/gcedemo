resource "google_compute_instance" "tfvm1" {
  name         = var.vmname
  machine_type = var.machinetype
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
    subnetwork = var.subnet_id
    access_config {
      network_tier = "STANDARD"
    }
  }

  metadata = {
    name = var.vmname
  }

  metadata_startup_script = "sudo dnf -y upgrade ; sudo dnf -y install vim git neofetch tmux curl wget python3-pip epel-release"
}
