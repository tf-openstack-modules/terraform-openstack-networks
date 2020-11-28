variable "router_id" {
  type = string
}

variable "network" {
  type = object({ name=string, subnet_name=string, cidr=string })
}

variable "dns_ip" {
  type = list(string)
  default = ["1.1.1.1", "1.0.0.1"]
}