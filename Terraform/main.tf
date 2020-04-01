resource "random_id" "random_id" {
  byte_length = 2
}

resource "random_string" "password" {
  length  = 8
  special = true
}

resource "random_uuid" "uuid1" {
}

resource "random_uuid" "uuid2" {
}

resource "random_uuid" "uuid3" {
}

resource "random_uuid" "uuid4" {
}

resource "azurerm_resource_group" "resource_group" {
  name     = "${var.username}${random_id.random_id.hex}-rg"
  location = "${var.location}"
}

module "aks" {
  source = "./modules/aks"
  
}

module "acr" {
  source = "./modules/acr"
  
}

module "keyvault" {
  source = "./modules/keyvault"
  
}
