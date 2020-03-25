data template_file "userdata" {
  template = file("${path.module}/templates/userdata.yaml")

  vars = {
    username       = var.username
    ssh_public_key = file(var.ssh_public_key)
  }
}


data template_file "metadata" {
  template = file("${path.module}/templates/metadata.yaml")
  vars = {
    dhcp               = var.dhcp
    hostname           = var.hostname
    private_ip_address = var.private_ip_address
    private_netmask    = var.private_netmask
    public_ip_address  = var.public_ip_address
    public_netmask     = var.public_netmask
    nameservers        = jsonencode(var.nameservers)
    gateway            = var.gateway
  }
}