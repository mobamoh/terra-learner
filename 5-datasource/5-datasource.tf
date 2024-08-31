data "google_compute_zones" "available" {
  region = var.gcp_region
  status = "UP"
}

output "compute_zones" {
  value       = data.google_compute_zones.available.names
  description = "The list of available zones in the region"
}
