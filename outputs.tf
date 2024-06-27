output "VMs_And_IPs_VM_Ubuntu" {
  value = {
    for vm_id, vm in virtualbox_vm.ubuntu :
    vm_id => {
      VM = vm.name
      IP = vm.network_adapter[0].ipv4_address
    }
  }
}