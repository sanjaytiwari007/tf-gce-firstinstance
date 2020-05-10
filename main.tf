provider "google" {
  project     = "learning-project-276016"
    region      = "us-east1"
}
resource "google_compute_instance" "default" {
  name         = "test2"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
    network_interface{
    network = "default"
  }
}