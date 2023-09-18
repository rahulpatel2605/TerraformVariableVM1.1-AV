resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name_value
  location = var.location_value
}

resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name_value
  address_space       = var.address_space_value
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "internal" {
  name                 = var.subnet_name_value
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.address_prefixes_value
}

resource "azurerm_public_ip" "example" {
  name                    = var.public_ip_name_value
  location                = azurerm_resource_group.example.location
  resource_group_name     = azurerm_resource_group.example.name
  allocation_method       = var.public_ip_allocation_method_value
  idle_timeout_in_minutes = var.public_ip_idle_timeout_value
}

resource "azurerm_network_interface" "main" {
  name                = var.nic_name_value
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = var.ip_config_name_value
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = var.private_ip_address_allocation_value
    public_ip_address_id          = azurerm_public_ip.example.id
  }
}

resource "azurerm_virtual_machine" "main" {
  name                  = var.vm_name_value
  location              = azurerm_resource_group.example.location
  resource_group_name   = azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = var.vm_size_value

#   # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = var.delete_os_disk_on_termination_value

# #   # Uncomment this line to delete the data disks automatically when deleting the VM
# #   # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = var.storage_image_reference_publisher_value
    offer     = var.storage_image_reference_offer_value
    sku       = var.storage_image_reference_sku_value
    version   = var.storage_image_reference_version_value
  }
  storage_os_disk {
    name              = var.storage_os_disk_name_value
    caching           = var.storage_os_disk_caching_value
    create_option     = var.storage_os_disk_create_option_value
    managed_disk_type = var.storage_os_disk_manage_disk_type_value
  }
  os_profile {
    computer_name  = var.os_profile_computer_name_value
    admin_username = var.os_profile_admin_username_value
    admin_password = var.os_profile_admin_password_value
  }
  os_profile_linux_config {
    disable_password_authentication = var.os_profile_linux_config_disable_psswd_auth_value
  }
# #   tags = {
# #     environment = "staging"
# #   }
}