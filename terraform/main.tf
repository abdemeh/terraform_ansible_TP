terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.98.1"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox_endpoint
  username = var.proxmox_user
  password = var.proxmox_password
  insecure = true

  ssh {
    agent = true
  }
}

resource "proxmox_virtual_environment_pool" "abdellatif_pool" {
  pool_id = var.pool_id
}

module "bdd" {
  source       = "./modules/bdd"
  pool_id      = proxmox_virtual_environment_pool.abdellatif_pool.pool_id
  
  vm_name      = var.bdd_vm_name
  vm_node_name = var.vm_node_name 
  vm_id        = var.bdd_vm_id
  ram          = var.bdd_ram
  cpu_cores    = var.bdd_cpu_cores
  

  ip_address   = var.bdd_ip_address
  vm_user      = var.vm_user
  vm_password  = var.vm_password
}

module "app" {
  source       = "./modules/app"
  depends_on   = [module.bdd]             
  pool_id      = proxmox_virtual_environment_pool.abdellatif_pool.pool_id
  
  vm_name      = var.app_vm_name
  vm_node_name = var.vm_node_name
  vm_id        = var.app_vm_id
  ram          = var.app_ram
  cpu_cores    = var.app_cpu_cores
  
  ip_address   = var.app_ip_address
  vm_user      = var.vm_user
  vm_password  = var.vm_password
}