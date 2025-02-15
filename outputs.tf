# File: outputs.tf
# Description: Defines outputs for the Talos deployment on Proxmox.
# Last Updated: February 15, 2025 15:39 CET
# Created by: https://github.com/CyberCogeanu

output "talos_vm_ip" {
  value = proxmox_vm_qemu.talos_vm.network_interface.0.ip_address
  description = "IP address of the Talos VM"
}