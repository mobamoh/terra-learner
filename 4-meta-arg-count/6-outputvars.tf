output "vm-name-0" {
  description = "the name of the created vm"
  value       = google_compute_instance.myvminstance[0].name
}

output "vm-name-1" {
  description = "the name of the created vm"
  value       = google_compute_instance.myvminstance[1].name
}

output "vm-names-for-list" {
  description = "value of the instance id"
  value       = [for instance in google_compute_instance.myvminstance : instance.name]
}

output "vm-names-for-map" {
  description = "value of the instance id"
  value       = { for instance in google_compute_instance.myvminstance : instance.name => instance.instance_id }
}

output "vm-names-for-map-with-count" {
  description = "value of the instance id"
  value       = { for c, instance in google_compute_instance.myvminstance : c => instance.name }
}

output "vm-name-legacy-splat-operator" {
  description = "the name of the created vm"
  value       = google_compute_instance.myvminstance.*.name
}

output "vm-name-latest-generalized-splat-operator" {
  description = "the name of the created vm"
  value       = google_compute_instance.myvminstance[*].name
}
