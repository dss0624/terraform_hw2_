variable "project_id" {
  type = string
}

variable "vpc_name" {
  default = "myvpc"
  type = string
}

variable "auto_mode" {
  type = bool
}

variable "subnet_name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "region" {
  type  = string
}

variable "router_name" {
  type = string
  default = "test-router"
}

variable "router_nat_name" {
  type = string
  default = "test-router-nat"
}

variable "firewall_name" {
  type = string
  default = "test-firewall"
}