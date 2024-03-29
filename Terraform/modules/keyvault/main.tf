resource "random_id" "random_id" {
  byte_length = 2
}
 data "azurerm_resource_group" "resource_group" {
  name     = "${var.username}"
 
}
data "azurerm_client_config" "current" {
}

resource "azurerm_key_vault" "example" {
  name                        = "testaPs"
  location                    = "${data.azurerm_resource_group.resource_group.location}"
  resource_group_name         = "${data.azurerm_resource_group.resource_group.name}"
  enabled_for_disk_encryption = true
  tenant_id                   = "${data.azurerm_client_config.current.tenant_id}"
  soft_delete_enabled         = true
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = "${data.azurerm_client_config.current.tenant_id}"
    object_id = "${data.azurerm_client_config.current.object_id}"

    key_permissions = [
      "get",
    ]

    secret_permissions = [
      "get",
    ]

    storage_permissions = [
      "get",
    ]
  }

  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
  }

  tags = {
    environment = "Testing"
  }
}

