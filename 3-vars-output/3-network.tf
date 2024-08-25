resource "google_compute_network" "mynetwork" {
  name                    = "mynetwork"
  provider                = google.berlin
  # project = var.gcp_project
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "mysubnet" {
  name = "mysubnet"
  provider = google.berlin
  network       = google_compute_network.mynetwork.id
  ip_cidr_range = "10.128.0.0/20"
}
