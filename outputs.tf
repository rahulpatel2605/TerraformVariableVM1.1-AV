output "public_ip_address" {
  value = azurerm_public_ip.example.ip_address  #public_ip_allocation_method_value = "Static", sometime it will not work while "Dynamic"
}
