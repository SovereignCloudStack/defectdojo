variable "vm_name" {
  type        = string
  description = "Name of the Compute Instance for zuul. Default: zuul"
  default     = "defectd"
}

#change based on cloudls.yaml configuration
variable "cloudsyaml_identifier" {
  type        = string
  description = "Identitifier of the OPenStack Project to deploy the resources to"
  default     = "open-stack"
}

variable "network_name" {
  type        = string
  description = "The name of the network that is created for zuul deployment"
  nullable    = false
  default     = "defectd_network"
}

#change according to needs
variable "subnet_cidr" {
  type        = string
  description = "Defined CIDR for instances"
  nullable    = false
  default     = "192.168.199.0/24"
}

#change based on project router id
variable "router_id" {
  type        = string
  description = "router the  network should be attached to"
  nullable    = false
  default     = "b5ac1f73-96ae-488f-9005-4519a9ea1f0b"
}

variable "security_group" {
  type        = string
  description = "name of the security group that is about to be created"
  nullable    = false
  default     = "defectd_secgroup"
}

#defaults to Ubuntu 22.04 (20240223)
variable "instance_image_id" {
  type        = string
  description = "image id used for the  instance"
  nullable    = false
  default     = "68ca0363-027e-4d26-b3fc-e893d38a917e"
}

#defaults to use SCS-4V-16
variable "flavor_name" {
  type        = string
  description = "flavor name for the  instance"
  nullable    = false
  default     = "SCS-4V-16"
}

#ssh-rsa key for remote connection to the node
variable "inital_ssh_pubkey" {
  type        = string
  description = "key name for the  instance"
  nullable    = false
  default     = "ssh-rsa xxxxxx"
}
