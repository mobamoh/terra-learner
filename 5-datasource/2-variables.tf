variable "gcp_project" {
  description = "value of the project in which the resources will be created"
  type        = string
  default     = "someproject"
}

variable "gcp_region" {
  description = "value of the region in which the resources will be created"
  type        = string
  default     = "europe-west10"
}

variable "machine_type" {
  description = "value of the machine type in which the resources will be created"
  type        = string
  default     = "e2-micro"
}
