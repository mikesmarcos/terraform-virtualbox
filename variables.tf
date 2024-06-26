variable "project_name" {
  description = "Nome do projeto"
  type        = string
}

variable "number_of_vms" {
  description = "Numero de VMs a ser criada"
  type        = number
}

variable "number_of_cpus" {
  description = "Numero de CPUS para a VM a ser criada"
  type        = number
}

variable "ram_size" {
  description = "Tamanho da RAM para a VM a ser criada"
  type        = string
}

variable "bridged_host_interface" {
  description = "Interface de bind para modo bridged"
  type        = string
}

variable "vagrant_ubuntu_box" {
  description = "URL para imagem do Ubuntu"
  type        = string
}