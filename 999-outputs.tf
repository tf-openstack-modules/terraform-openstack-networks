output "network" {
  value = openstack_networking_network_v2.network
}

output "subnet" {
  value = openstack_networking_subnet_v2.subnet
}

output "interface" {
  value = openstack_networking_router_interface_v2.interface
}