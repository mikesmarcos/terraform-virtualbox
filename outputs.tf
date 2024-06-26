output "VMs_And_IPs" {
  value = ["VM: ${element(virtualbox_vm.ubuntu[*].name, 1)} | IP: ${element(virtualbox_vm.ubuntu[*].network_adapter[0].ipv4_address, 1)}"]
}