variable "gcp_project" {
  description = "the project in which the resources will be created"
  type        = string
  default     = "someproject"
}

variable "gcp_region" {
  description = "the region in which the resources will be created"
  type        = string
  default     = "europe-west10"
}

variable "gcp_zone" {
  description = "the zone in which the resources will be created"
  type        = string
  default     = "europe-west10-a"
}

variable "machine_type" {
  description = "the machine type in which the resources will be created"
  type        = string
  default     = "e2-micro"
}
