resource "google_compute_network" "mynetwork" {
  project                 = "leafy-outrider-431811-d4"
  name                    = "mynetwork"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "mysubnet-berlin" {
  provider      = google.berlin
  name          = "mysubnet-berlin"
  network       = google_compute_network.mynetwork.id
  ip_cidr_range = "10.128.0.0/20"
}

resource "google_compute_subnetwork" "mysubnet-iowa" {
  provider      = google.iowa
  name          = "mysubnet-iowa"
  network       = google_compute_network.mynetwork.id
  ip_cidr_range = "10.132.0.0/20"
}
