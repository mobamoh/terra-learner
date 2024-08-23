resource "google_compute_firewall" "myfwssh22" {
    name = "myssh22"
    network = google_compute_network.mynetwork.id
    allow {
      protocol = "tcp"
      ports = ["22"]
    } 
    direction = "INGRESS"
    priority = 1000
    source_ranges = [ "0.0.0.0/0" ]
    target_tags = [ "myssh-tag" ]
}

resource "google_compute_firewall" "myfwhttp80" {
  name = "myhttp80"
  network = google_compute_network.mynetwork.id
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  direction = "INGRESS"
  priority = 1000
  source_ranges = [ "0.0.0.0/0" ]
  target_tags = ["myhttp-tag"]
}