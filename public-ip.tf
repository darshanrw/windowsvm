resource "azurerm_public_ip" "winip" {
  name                = var.azurerm_public_ip
  resource_group_name = azurerm_resource_group.winrg.name
  location            = var.location
  allocation_method   = "Dynamic"
}
