resource "virtualbox_vm" "ubuntu" {
  count  = var.number_of_vms
  name   = format("${var.project_name}-%02d", count.index + 1)
  image  = fileexists("./ubuntu.box") ? "./ubuntu.box" : var.vagrant_ubuntu_box
  cpus   = var.number_of_cpus
  memory = var.ram_size

  network_adapter {
    type           = "bridged"
    host_interface = var.bridged_host_interface
  }
}