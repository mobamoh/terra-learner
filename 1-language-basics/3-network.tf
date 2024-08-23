resource "google_compute_network" "mynetwork" {
  name    = "mynetwork"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "mysubnet" {
  name = "mysubnet"
  network = google_compute_network.mynetwork.id
  ip_cidr_range = "10.128.0.0/20"
  region = "us-central1"
}