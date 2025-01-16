# Proxmox Full-Clone
# ---
# Create a new VM from a clone

resource "proxmox_vm_qemu" "k8s" {
  for_each = { 
    for idx, vm in var.vms : idx + 1 => vm 
  }

  onboot = true

  name  = "${each.value.name}-${each.key}"
  desc  = each.value.desc
  target_node = each.value.pve_node

  # Setting the OS type to cloud-init
  os_type    = "cloud-init"
  clone      = var.cloud_init_template
  full_clone = true

  cores       = each.value.cores
  memory      = each.value.memory
  numa        = true
  vcpus       = 0
  cpu_type    = "host"

  # Define a static IP on the primary network interface
  ipconfig0 = "ip=${var.base_ip}${100 + each.key}/24,gw=${var.gateway_ip}"


  ciuser  = var.username
  sshkeys = <<EOF
${var.ssh_public_key}
  EOF

  # Enable the QEMU guest agent
  agent = 0

  scsihw   = "virtio-scsi-single"
  bootdisk = "scsi0"

  serial {
    id = 0
  }

  network {
    id = 0
    bridge = "vmbr0"
    model  = "virtio"
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = each.value.disk_size
        }
      }
    }
    ide {
      ide1 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }
}
