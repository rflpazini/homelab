variable "proxmox_api_url" {
    type = string
}

variable "proxmox_api_token_id" {
    type = string
}

variable "proxmox_api_token_secret" {
    type = string
}

variable "cloud_init_template" {
  type        = string
  description = "Name of the cloud-init template to use"
  default     = "ubuntu-24.04-server-cloudimg-amd64"
}

variable "username" {
  type        = string
  description = "Username of the cloud-init user"
  default     = "ubuntu"
}

variable "ssh_public_key" {
  type        = string
  description = "Public SSH Key to add to authorized keys"
}

variable "gateway_ip" {
  type        = string
  description = "IP of gateway"
  default = "192.168.50.1"
}

variable "base_ip" {
  description = "Base IP for the cluster (e.g., 192.168.50.100)"
  default     = "192.168.50."
}

variable "vms" {
  type = list(object({
    name      = string
    pve_node  = string
    desc      = string
    memory    = number
    cores     = number
    disk_size = number
  }))
  default = []
}