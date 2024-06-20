resource "azurerm_virtual_network_gateway_connection" "vpn_connection" {
  for_each                      = local.vpn_connection
  name                          = each.value.name
  resource_group_name           = var.resource_group_output[each.value.resource_group_name].name
  location                      = var.resource_group_output[each.value.resource_group_name].location
  type                          = each.value.type
  virtual_network_gateway_id    = var.virtual_network_gateway_output[each.value.vpn_gateway_name].id
  local_network_gateway_id      = var.local_network_gateway_output[each.value.local_network_gateway_name].id
  shared_key                    = each.value.shared_key
}