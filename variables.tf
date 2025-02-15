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
