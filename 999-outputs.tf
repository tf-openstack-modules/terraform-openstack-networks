output "network" {
  value = openstack_networking_network_v2.network
  description = "The value of the network created by the module."
}

output "subnet" {
  value = openstack_networking_subnet_v2.subnet
  description = "The value of the subnet created by the module."
}

output "interface" {
  value = openstack_networking_router_interface_v2.interface
  description = "The value of the router's interface created by the module."
}