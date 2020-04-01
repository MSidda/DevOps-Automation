resource "random_id" "random_id" {
  byte_length = 2
}
resource "azurerm_resource_group" "resource_group" {
  name     = "${var.username}${random_id.random_id.hex}-rg"
  location = "${var.location}"
}
resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "${var.cluster_name}${random_id.random_id.hex}"
  location            = "${azurerm_resource_group.resource_group.location}"
  resource_group_name = "${azurerm_resource_group.resource_group.name}"
  dns_prefix          = "${var.dns_prefix}-${random_id.random_id.hex}"

  linux_profile {
    admin_username = "ubuntu"

    ssh_key {
      key_data = "${var.ssh_public_key}"
    }
  }

  default_node_pool {
    name       = "agentpool"
    node_count = "${var.agent_count}"
    vm_size    = "Standard_DS1_v2"

    # os_type         = "Linux"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = "${var.client_id}"
    client_secret = "${var.client_secret}"
  }

  role_based_access_control {
    enabled = false
  }

  tags = {
    Environment = "Test"
  }
}