# terraform {
#   required_providers {
#     azurerm = {
#         source = "hashicorp/azurerm"
#         version = "3.73.0"
#     }
#   }
# }

provider "azurerm" {
  features {}           #for set subscription #az account set --subscription "f5c4dbcf-g9d9-5f4c-c7ab-21bf9a7a80e0"
}
