locals {
   vpn_connection = {for vpn_connection in var.vpn_connection_list : vpn_connection.name => vpn_connection}
}