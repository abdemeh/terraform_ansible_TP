terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.98.1"
    }
  }
}

resource "proxmox_virtual_environment_vm" "bdd_vm" {
  pool_id   = var.pool_id
  name      = var.vm_name
  node_name = var.vm_node_name
  vm_id     = var.vm_id

  memory {
    dedicated = var.ram
  }

  cpu {
    cores = var.cpu_cores
  }

  network_device {
    bridge = var.vm_network_device
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = "local:iso/jammy-server-cloudimg-amd64.img"
    interface    = var.vm_disk_interface
    size         = var.vm_disk_size
  }

  agent {
    enabled = true
  }

  initialization {
    user_account {
      username = var.vm_user
      password = var.vm_password
    }
    ip_config {
      ipv4 {
        address = var.ip_address
      }
    }
  }

  boot_order = [var.vm_disk_interface]
}
