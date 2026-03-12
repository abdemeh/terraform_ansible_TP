variable "proxmox_endpoint" {
  type        = string
  description = "Proxmox pool ID"
}

variable "proxmox_user" {
  type        = string
  description = "Proxmox pool ID"
}

variable "proxmox_password" {
  type        = string
  description = "Proxmox pool ID"
}

variable "pool_id" {
  type        = string
  description = "Proxmox pool ID"
}

variable "vm_user" {
  type    = string
  default = "ubuntu"
}

variable "vm_password" {
  type      = string
  sensitive = true
}

variable "bdd_vm_name" {
  type    = string
  default = "cytech-X-bdd"
}

variable "vm_node_name" {
  type    = string
  default = "proxmox2"
}

variable "bdd_vm_id" {
  type    = number
}

variable "bdd_ram" {
  type    = number
  default = 2048
}

variable "bdd_cpu_cores" {
  type    = number
  default = 1
}

variable "bdd_ip_address" {
  type    = string
}

variable "app_vm_name" {
  type    = string
  default = "cytech-X-app"
}

variable "app_vm_id" {
  type    = number
}

variable "app_ram" {
  type    = number
  default = 1024
}

variable "app_cpu_cores" {
  type    = number
  default = 1
}

variable "app_ip_address" {
  type    = string
}