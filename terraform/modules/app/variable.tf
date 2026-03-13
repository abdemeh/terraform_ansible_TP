variable "vm_name" {
    type = string
}
variable "vm_node_name" {
    type = string
}
variable "vm_id" {
    type = number 
}
variable "ram" {
    type = number 
    default = 1024
}
variable "cpu_cores" {
    type = number 
    default = 1
}
variable "vm_disk_size" {
    type = number 
    default = 20
}
variable "vm_disk_interface" {
    type = string 
    default = "virtio0"
}
variable "ip_address" {
    type = string 
}
variable "vm_network_device" {
    type = string
    default = "vmbr0"
}
variable "vm_user" {
    type = string 
}
variable "vm_password" {
    type = string 
}

variable "gateway" {
    type = string
}
