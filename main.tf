resource "proxmox_lxc" "proxmox_lxc" {
    features {
        nesting = true
    }
    hostname = "terraform-new-container"
    rootfs {
      storage = "rep_1g"
      size = "8G"
    }
    network {
        name = "eth0"
        bridge = "vmbr0"
        ip = "dhcp"
        gw = "192.168.0.1"
        ip6 = "dhcp"
        tag = "20"
        firewall = false
    }
    ostemplate = "Template-Ubuntu-Docker"
    password = "!45RedRanger54!"
    #pool = "default"
    target_node = "FR-VH-02"
    unprivileged = true
}