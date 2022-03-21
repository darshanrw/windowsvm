resource "azurerm_virtual_network" "winvnet" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = azurerm_resource_group.winrg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "winsubnet" {
  name                 = var.azurerm_subnet
  resource_group_name  = azurerm_resource_group.winrg.name
  virtual_network_name = azurerm_virtual_network.winvnet.name
  address_prefixes     = ["10.0.1.0/24"]
}