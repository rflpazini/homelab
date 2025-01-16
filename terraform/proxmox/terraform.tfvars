ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCq8J5xmS1I3T6AjqB7bygQ0iRHjkQy/rRMj4ZSO3ThuNaURACxkOsBF+//+h2u+kHhKRz6DOYNcdEKQrJn3wK37NPWB94oPdI//r1rbxMPQ90X9ODr21tqvbBHBtNSkchl8hp6pVQ2Nfd6ZXe8gOgjW0pEc42LsqLryk9TyDkbqIollkC/SHb0cM9xjqkrVUiVHsWrhJrRKXpiNV15KvL2+IQ/knP2KhwO4YMvubzm1NZIijyijUT3F8X8Wlqp/vfkcng2wTBkK+phdbsQamSsStcXQe/whlptvDP7QYTaCEqOI5tcKQIdKZdwEWqNigCJWAt+egqrX0EjJPykY0Nd2cL6LqPpoNJcTvMo+izO08DjZ8M6+5hFeFQP2V1qnatY6xvawHs9kOiuMa/uNmPZDQHsS7j4h63mncPO7Q9C5t06ZLFnmr2OJm62Mfg5d/7VKEwrLvYO3G19LWEHz85047AphqHHuU/Racc0AlxZcxfgkbC2SSxlmYhAup5inPO1lGby/bCrIUAArhfU3nLoD44dPbXCTbZHy6Crsd02Q1u0+rZUKzF4LM3pwWvV6bvd573zJlGqFUPQmGj/6iVhkeRa2a8A4BaWL9GsudjY16rOSTXd8NKj4UJuBYKKvIQrrshG7FRJj9NSARpfaK9AshNKLnxgKLkwhCIe/Hh00w== rflpazini@gmail.com"
username = "root"

proxmox_api_url = "https://192.168.50.20:8006/api2/json"
proxmox_api_token_id = "root@pam!terraform"
proxmox_api_token_secret = "e6b29cb1-9037-4d02-9feb-58669f352dea"

gateway_ip = "192.168.50.1"

vms = [
  {
    name      = "k8s-control-1"
    pve_node  = "prx-prd-1"
    desc      = "Kubernetes control plane node 1"
    ip        = "192.168.50.100"
    memory    = 2048
    cores     = 2
    disk_size = 20
  },
  {
    name      = "k8s-worker-1"
    pve_node  = "prx-prd-1"
    desc      = "Kubernetes worker node 1"
    ip        = "192.168.50.101"
    memory    = 2048
    cores     = 2
    disk_size = 80
  },
  {
    name      = "k8s-worker-2"
    pve_node  = "prx-prd-1"
    desc      = "Kubernetes worker node 2"
    ip        = "192.168.50.102"
    memory    = 2048
    cores     = 2
    disk_size = 80
  }
]