#### MASTER NETWORK CONFIGURATION ####

# Network creation
resource "openstack_networking_network_v2" "network" {
  name = var.network.name
}

# Subnet configuration
resource "openstack_networking_subnet_v2" "subnet" {
  name            = var.network.subnet_name
  network_id      = openstack_networking_network_v2.network.id
  cidr            = var.network.cidr
  dns_nameservers = var.dns_ip
}

# Router interface configuration
resource "openstack_networking_router_interface_v2" "interface" {
  router_id = var.router_id
  subnet_id = openstack_networking_subnet_v2.subnet.id
}