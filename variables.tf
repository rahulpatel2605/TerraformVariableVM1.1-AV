variable "resource_group_name_value" {
  description = "value for the name"
}

variable "location_value" {
  description = "value for the location"
}

variable "vnet_name_value" {
  description = "value for the vnet_name"
}

variable "address_space_value" {
  description = "value for the address space"
}

variable "subnet_name_value" {
  description = "value for the subnet name"
}

variable "address_prefixes_value" {
  description = "value for the address prefixs"
}

variable "public_ip_name_value" {
  description = "value for the public ip of the vm"
}

variable "public_ip_allocation_method_value" {
  description = "value for the allocation method type"
}

variable "public_ip_idle_timeout_value" {
  description = "value for the public ip idle timeout in minutes"
}

variable "nic_name_value" {
  description = "value for the nic name"
}

variable "ip_config_name_value" {
  description = "value for the ip configuration name"
}

variable "private_ip_address_allocation_value" {
  description = "value for the private ip address allocation"
}

variable "vm_name_value" {
  description = "value for the vm name"
}

variable "vm_size_value" {
  description = "value for the vm size"
}

variable "delete_os_disk_on_termination_value" {
  description = "value for the os will be terminate with vm"
}

variable "storage_image_reference_publisher_value" {
  description = "value for storage image reference publisher"
}

variable "storage_image_reference_offer_value" {
  description = "value for the storage image reference offer"
}

variable "storage_image_reference_sku_value" {
  description = "value for the storage omage reference sku"
}

variable "storage_image_reference_version_value" {
  description = "value for the storage image reference version"
}

variable "storage_os_disk_name_value" {
  description = "value for the name of os disk"
}

variable "storage_os_disk_caching_value" {
    description = "value for the os disk csching"
}

variable "storage_os_disk_create_option_value" {
  description = "value for the storage os disk create option"
}

variable "storage_os_disk_manage_disk_type_value" {
  description = "value for the manage disk type"
}

variable "os_profile_computer_name_value" {
  description = "value for the os profile computer/host name"
}

variable "os_profile_admin_username_value" {
  description = "value for the os profile user name"
}

variable "os_profile_admin_password_value" {
  description = "value for the os admin profile password"
}

variable "os_profile_linux_config_disable_psswd_auth_value" {
  description = "value for the os profile linux config disable password authentication"
}
