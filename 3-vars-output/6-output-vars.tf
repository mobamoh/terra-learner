## ATTRIBUTES
output "vm-id" {
  description = "the id of the created vm"
  value       = google_compute_instance.myvminstance.id
}

output "vm-instance-id" {
  description = "value of the instance id"
  value       = google_compute_instance.myvminstance.instance_id
}

output "vm-self-link" {
  description = "value of the self link"
  value       = google_compute_instance.myvminstance.self_link
}

output "vm-external-ip" {
  description = "value of the external ip"
  value       = google_compute_instance.myvminstance.network_interface.0.access_config.0.nat_ip  
}

# ARGUMENTS
output "vm-name" {
  description = "the name of the created vm"
  value       = google_compute_instance.myvminstance.name
}

output "vm-machine-type" {
  description = "the machine type of the created vm"
  value       = google_compute_instance.myvminstance.machine_type
}