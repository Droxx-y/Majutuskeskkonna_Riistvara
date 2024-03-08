resource "proxmox_vm_qemu" "renee" {
  name                    = "renee"
  vmid                    = "100"
  target_node             = "l6vi"
  clone                   = "ubuntu-server"
  cores                   = 1
  sockets                 = 1
  cpu                     = "host"
  memory                  = 4096
  agent                   = 1
  full_clone              = true
  scsihw                  = "virtio-scsi-pci"
  bootdisk                = "scsi0"
  os_type                 = "cloud-init"
  cloudinit_cdrom_storage = "local-lvm"

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = 50
        }
      }
    }
  }

  ipconfig0 = "ip=192.168.26.70/24,gw=192.168.26.1"
  sshkeys   = <<EOF
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDpPpW8ELgPVYVtJkJRO/Q30EfiyjPEbD5YkEdW6MkDvvyHEzjZmVqv+6vuDu318MaKk5GFSiyafsomFyfH0o6b9/EFSagXA+c3GVM5Kib9SrxbUOxa2Zv4Sf0ga9+V53nHULqwSTJ/TzICVovIIyjUm7K0Cir3X86wrcEEw66+rJ/U+AD7jRPYgrU069UCSeUlFIbLxt6w8P9N8akrrUhbVZbc+1zkG+TqKCnCsZidjqXo+eK2krAHo5+QJnnOAk4Al55hqRjM1IRlpf7vL1jIY0YCPBLMxy4STlu5zG5RGRmkJEz3a6xKowWG04aFU/YfKiqYNB36Q5BSXbTY9j51 sysadmin@ubuntu
  EOF

}

resource "proxmox_vm_qemu" "alex" {
  name                    = "alex"
  vmid                    = "101"
  target_node             = "l6vi"
  clone                   = "ubuntu-server"
  count                   = 1
  cores                   = 1
  sockets                 = 1
  cpu                     = "host"
  memory                  = 4096
  agent                   = 1
  full_clone              = true
  scsihw                  = "virtio-scsi-pci"
  bootdisk                = "scsi0"
  os_type                 = "cloud-init"
  cloudinit_cdrom_storage = "local-lvm"

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = 50
        }
      }
    }
  }

  ipconfig0 = "ip=192.168.26.71/24,gw=192.168.26.1"
  sshkeys   = <<EOF
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDpPpW8ELgPVYVtJkJRO/Q30EfiyjPEbD5YkEdW6MkDvvyHEzjZmVqv+6vuDu318MaKk5GFSiyafsomFyfH0o6b9/EFSagXA+c3GVM5Kib9SrxbUOxa2Zv4Sf0ga9+V53nHULqwSTJ/TzICVovIIyjUm7K0Cir3X86wrcEEw66+rJ/U+AD7jRPYgrU069UCSeUlFIbLxt6w8P9N8akrrUhbVZbc+1zkG+TqKCnCsZidjqXo+eK2krAHo5+QJnnOAk4Al55hqRjM1IRlpf7vL1jIY0YCPBLMxy4STlu5zG5RGRmkJEz3a6xKowWG04aFU/YfKiqYNB36Q5BSXbTY9j51 sysadmin@ubuntu
  EOF

}

resource "proxmox_vm_qemu" "denis" {
  name                    = "denis"
  vmid                    = "102"
  target_node             = "l6vi"
  clone                   = "ubuntu-server"
  count                   = 1
  cores                   = 1
  sockets                 = 1
  cpu                     = "host"
  memory                  = 4096
  agent                   = 1
  full_clone              = true
  scsihw                  = "virtio-scsi-pci"
  bootdisk                = "scsi0"
  os_type                 = "cloud-init"
  cloudinit_cdrom_storage = "local-lvm"

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = 50
        }
      }
    }
  }

  ipconfig0 = "ip=192.168.26.72/24,gw=192.168.26.1"
  sshkeys   = <<EOF
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDpPpW8ELgPVYVtJkJRO/Q30EfiyjPEbD5YkEdW6MkDvvyHEzjZmVqv+6vuDu318MaKk5GFSiyafsomFyfH0o6b9/EFSagXA+c3GVM5Kib9SrxbUOxa2Zv4Sf0ga9+V53nHULqwSTJ/TzICVovIIyjUm7K0Cir3X86wrcEEw66+rJ/U+AD7jRPYgrU069UCSeUlFIbLxt6w8P9N8akrrUhbVZbc+1zkG+TqKCnCsZidjqXo+eK2krAHo5+QJnnOAk4Al55hqRjM1IRlpf7vL1jIY0YCPBLMxy4STlu5zG5RGRmkJEz3a6xKowWG04aFU/YfKiqYNB36Q5BSXbTY9j51 sysadmin@ubuntu
  EOF

}