output "vm-name-latest-generalized-splat-operator" {
  description = "the name of the created vm"
  value       = google_compute_instance.myvminstances[*].name
}
