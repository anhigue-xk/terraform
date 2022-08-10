resource "google_compute_instance" "firstserver" {
  name         = "firstServer"
  machine_type = "n1-standar-1"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  network_interface {
    subnetwork = google_comput_subnetwork.dev-subnet.name

    access_config {
    }
  }

  metadata {
    foo = "bar"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}