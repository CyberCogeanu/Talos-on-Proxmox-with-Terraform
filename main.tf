terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.66.2"
    }
    talos = {
      source  = "siderolabs/talos"
      version = "0.6.1"
    }
  }
}

provider "proxmox" {
  endpoint = "https://192.168.0.2:8006/"
  insecure = true # Only needed if your Proxmox server is using a self-signed certificate
}

resource "proxmox_virtual_environment_vm" "talos_worker_01" {
  #depends_on = [ proxmox_virtual_environment_vm.talos_cp_01 ]
  description = "Managed by Terraform "
  name        = "talos-master-test--01"
  tags        = ["test"]
  node_name   = "pve"
  on_boot     = true

  cpu {
    cores = 2
    type = "x86-64-v2-AES"
  }

  memory {
    dedicated = 2048
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = "vmbr0"
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = proxmox_virtual_environment_download_file.talos_nocloud_image.id
    file_format  = "raw"
    interface    = "virtio0"
    size         = 6
  }

  operating_system {
    type = "l26" # Linux Kernel 2.6 - 5.X.
  }

  initialization {
    datastore_id = "local-lvm"
    ip_config {
      ipv4 {
        address = "${var.talos_worker_01_ip_addr}/24"
        gateway = var.default_gateway
      }
      ipv6 {
        address = "dhcp"
      }
    }
  }
}

  # Use remote-exec to run the qm command on the Proxmox server
 # provisioner "remote-exec" {
  #  inline = [
   #   "qm set ${self.vmid} --ide2 local:iso/metal-amd64.iso,media=cdrom"
    #]
  #}


