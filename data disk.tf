resource "azurerm_managed_disk" "datadisk" {
  name                 = var.datadisk
  location             = var.location
  resource_group_name  = azurerm_resource_group.winrg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10

  lifecycle {
   prevent_destroy = true
 }
}

resource "azurerm_virtual_machine_data_disk_attachment" "diskattach" {
  managed_disk_id    = azurerm_managed_disk.datadisk.id
  virtual_machine_id = azurerm_virtual_machine.winvm.id
  lun                = "10"
  caching            = "ReadWrite"
}