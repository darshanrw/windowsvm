# Create a resource group
resource "azurerm_resource_group" "winrg" {
  name     = var.resourcegroupname
  location = var.location
}