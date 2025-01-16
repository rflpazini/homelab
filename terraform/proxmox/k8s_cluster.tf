# Proxmox Full-Clone
# ---
# Create a new VM from a clone

resource "proxmox_vm_qemu" "k8s" {
  for_each = {
    for vm in var.vms : vm.name => vm
  }

  name = each.value.name
  desc = each.value.desc
  target_node = each.value.pve_node

  # Setting the OS type to cloud-init
  os_type = "cloud-init"
  # Set to the name of the cloud-init VM template created earlier
  clone      = var.cloud_init_template
  # Ensure each VM is cloned in full to avoid
  # dependency to the original VM template
  full_clone = true
  boot        = "order=virtio0"
  cores = each.value.cores
  memory = each.value.memory

  # Define a static IP on the primary network interface
  ipconfig0 = "ip=${each.value.ip}/24,gw=${var.gateway_ip}"

  ciuser = var.username
  sshkeys = var.ssh_public_key

  # Enable the QEMU guest agent
  agent = 1
  agent_timeout = 300 

  disks {
    virtio {
      virtio0 {
        disk {
          storage = "local-lvm"
          size    = "20G"
        }
      }
      virtio1 {
        disk {
          storage = "local-lvm"
          size    = "${each.value.disk_size}G"
          format  = "raw"
        }
      }
    }
  }

  lifecycle {
    ignore_changes = [
      target_node,
      network,
      clone,
      full_clone,
      qemu_os
    ]
  }
}
