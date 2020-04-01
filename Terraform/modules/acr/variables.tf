variable "prefix" {
  default = "azrega13"
  description = "The prefix used for all resources in this example"
}
variable "location" {
  default     = "West US 2"
  description = "The Azure Region in which all resources in this project should be provisioned"
}
variable "resource_group" {
  default     = "aks-cluster"
  description = "Resource Group name of the cluster"
}
variable "username" {
  default = "qldtfuser"
}

variable "subscription_id" {
  default = "c0ec6f80-33d1-4f5a-aeee-968b216cb574"
}

variable "client_id" {
  default = "53cefe4d-2e03-43d3-b7bd-df73ff529484"
}

variable "client_secret" {
  default = "hC_21iL2t5K-GfhvWX?R.a[XHUy39GZ?"
}

variable "tenant_id" {
  default = "c25560d1-52fe-45a5-942c-5e5e9cb3663e"
}