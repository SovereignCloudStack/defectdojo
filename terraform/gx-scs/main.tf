# Define required providers
terraform {
  required_version = ">= 1.3.7, <1.6.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}

# Configure the OpenStack Provider, set name of clouds.yaml entry according to your needs
provider "openstack" {
  cloud = var.cloudsyaml_identifier
}

resource "openstack_compute_keypair_v2" "inital_ssh_keypair" {
  name       = "instance-initial"
  public_key = var.inital_ssh_pubkey
}

module "defectd" {
  vm_name           = var.vm_name
  source            = "../modules/defectdojo"
  network_name      = var.network_name
  subnet_cidr       = var.subnet_cidr
  router_id         = var.router_id
  security_group    = var.security_group
  instance_image_id = var.instance_image_id
  flavor_name       = var.flavor_name
  key_pair          = openstack_compute_keypair_v2.inital_ssh_keypair.name
}

output "floating_ip" {
  value = module.defectd.floating_ip
}
