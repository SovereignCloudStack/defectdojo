variable "vm_name" {
  type        = string
  description = "Name of the Compute Instance for DefectDojo. Default: defectd"
  nullable    = false
}

variable "network_name" {
  type        = string
  description = "The name of the network that is created for DefectDojo deployment"
  nullable    = false
}

variable "subnet_cidr" {
  type        = string
  description = "Defined CIDR for DefectDojo"
  nullable    = false
}

variable "router_id" {
  type        = string
  description = "router the DefectDojo network should be attached to"
  nullable    = false
}

variable "security_group" {
  type        = string
  description = "name of the security group that is about to be created"
  nullable    = false
}

variable "instance_image_id" {
  type        = string
  description = "image id used for the DefectDojo instance"
  nullable    = false
}

variable "flavor_name" {
  type        = string
  description = "flavor name for the DefectDojo instance"
  nullable    = false
}

variable "key_pair" {
  type        = string
  description = "key name for the DefectDojo instance"
  nullable    = false
}
