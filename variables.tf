// Project related variables
variable "project" {
  description = "GCP project id"
  type        = string
  default     = "buoyant-truck-356209"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-c"
}

variable "key" {
  description = "path to json key to service account"
  type        = string
  default     = "buoyant-truck-356209-78130b5a35d8.json"
}

variable "region" {
  type        = string
  description = "GCP region"
  default     = "us-central1"
}

//VPC related variables
variable "vpc_name" {
  type        = string
  description = "GCP VPC name"
  default     = "myvpc"
}

variable "subnet_name" {
  type        = string
  description = "VPC subnet name"
  default     = "myvpcsubnet"
}

variable "cidr" {
  type        = string
  description = "VPC subnet cidr address"
  default     = "10.2.0.0/16"
}

// Instance related variables
variable "instance_type" {
  type        = string
  description = "GCE instance machine type"
  default     = "f1-micro"
}

variable "instance_image" {
  type        = string
  description = "GCE instance image"
  default     = "debian-cloud/debian-9"
}

variable "instance_name" {
  type        = string
  description = "GCE instance name"
}
