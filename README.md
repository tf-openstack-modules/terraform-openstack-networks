# Terraform Openstack Network

_This project aims to create a module to deploy networks on openstack provider._

![Release](https://github.com/tf-openstack-modules/terraform-openstack-networks/workflows/Release/badge.svg)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/tf-openstack-modules/terraform-openstack-networks)

## Where to find module documentations

You can find differents documentations versionned by terraform registry [here](https://registry.terraform.io/modules/tf-openstack-modules/networks/openstack/latest).

## Usage examples

```terraform
module "test_network_simple" {
	source  = "tf-openstack-modules/networks/openstack"
	version = "<version>"
 
	name = "network"
	router_id = "<id>"
    network = {
        name = "example_network"
        subnet_name = "example_subnet",
        cidr = "10.0.1.0/24"
    }
    dns_ip = [
        "1.1.1.1",
        "1.0.0.1"
    ]
}
```