resource "azurerm_network_interface" "winnic" {
  name                = var.azurerm_network_interface
  location            = var.location
  resource_group_name = azurerm_resource_group.winrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.winsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.winip.id
  }
}