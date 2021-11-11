provider "google" {
  project = "gkerocks"
  region  = "us-central1"
}

resource "google_compute_instance" "cloud-insight" {
  name         = "cloud-insight"
  machine_type = "f1-nano"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}

resource "google_compute_instance" "cloud-insight-v2" {
  name         = "cloud-insight-v2"
  machine_type = "g1-small"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
