variable "vpn_connection_list" {
  type = list(any)
  default = []
  description = "vpn configuration list"
}

variable "resource_group_output" {
  type = map(any)
  default = {}
  description = "map of resource group"
}

variable "virtual_network_gateway_output" {
  type = map(any)
  default = {}
  description = "map of resource group"
}

variable "local_network_gateway_output" {
  type        = map(any)
  default     = {}
  description = "subnet output"
}
