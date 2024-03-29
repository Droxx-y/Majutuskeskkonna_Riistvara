wget https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img

qm create 8000 --name ubuntu-server --memory 4096 --cores 1 --net0 virtio,bridge=vmbr0

qm importdisk 8000 jammy-server-cloudimg-amd64.img local-lvm

qm set 8000 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-8000-disk-0

qm set 8000 --ide2 local-lvm:cloudinit

qm set 8000 --boot c --bootdisk scsi0

qm set 8000 --serial0 socket --vga serial0

qm set 8000 --ipconfig0 ip=dhcp

qm resize 8000 scsi0 50G

qm template 8000
