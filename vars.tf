variable "token_id" {
  description = "Proxmox API token ID"
  type        = string
}

# Declare token_secret variable
variable "token_secret" {
  description = "Proxmox API token secret"
  type        = string
  sensitive   = true
}