output "internal_ip_address_node-yc1" {
  value = yandex_compute_instance.node-yc1.network_interface.0.ip_address
}

output "external_ip_address_node-yc1" {
  value = yandex_compute_instance.node-yc1.network_interface.0.nat_ip_address
}
