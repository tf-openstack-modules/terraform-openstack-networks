variable "router_id" {
  type = string
  description = "ID of the routeur to link the network to."
}

variable "network" {
  type = object({
    name=string,
    subnet_name=string,
    cidr=string
    })
  description = "An object describing the network to create."
}

variable "dns_ip" {
  type = list(string)
  default = [
    "1.1.1.1",
    "1.0.0.1"
  ]
  description = "A list of IP Addresses of the DNS to refer to. Default is set to 1.1.1.1 and 1.0.0.1."
}