resource "google_compute_instance" "myvminstance" {
  count        = 2
  name         = "myvminstance-${count.index}"
  provider     = google.berlin
  machine_type = var.machine_type
  zone         = var.gcp_zone
  network_interface {
    subnetwork = google_compute_subnetwork.mysubnet.id
    access_config {
    }
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }
  metadata_startup_script = file("${path.module}/startup.sh")
  tags                    = [tolist(google_compute_firewall.myfwssh22.target_tags)[0], tolist(google_compute_firewall.myfwhttp80.target_tags)[0]]
}
