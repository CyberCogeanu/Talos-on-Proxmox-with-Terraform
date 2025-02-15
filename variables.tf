# File: variables.tf
# Description: Defines variables for Talos deployment on Proxmox.
# Last Updated: February 15, 2025 15:32 CET
# Created by: https://github.com/CyberCogeanu

variable "cluster_name" {
  type    = string
  default = "talos_test"
}

variable "default_gateway" {
  type    = string
  default = "192.168.0.1"
}

variable "talos_worker_01_ip_addr" {
  type    = string
  default = "192.168.0.192"
}
