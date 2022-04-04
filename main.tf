provider "google" {
  project = "{{satya-project-344408}}"
  region  = "us-central1"
  credentials = file("./satya.json")
  zone    = "us-central1-c"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "Ubuntu 20.04 LTS"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}
