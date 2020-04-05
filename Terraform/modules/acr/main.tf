
resource "random_id" "random_id" {
  byte_length = 2
}
 data "azurerm_resource_group" "resource_group" {
  name     = "${var.resource_group}${random_id.random_id.hex}-rg"
  location = "${var.location}"
}
resource "azurerm_container_registry" "example" {
  name                = "${var.prefix}registry"
  resource_group_name = "${data.azurerm_resource_group.resource_group.name}"
  location            = "${data.azurerm_resource_group.resource_group.location}"
  sku                 = "Standard"
  # storage_account_id  = "${azurerm_storage_account.registry.id}"
}
