variable "prefix" {
  default = "azrega13"
  description = "The prefix used for all resources in this example"
}
variable "location" {
  default     = "West Europe"
  description = "The Azure Region in which all resources in this project should be provisioned"
}
variable "resource_group" {
  default     = "aaa-sidda-rg"
  description = "Resource Group name of the cluster"
}
variable "username" {
  default = "user"
}

variable "subscription_id" {
  default = ""
}

variable "client_id" {
  default = ""
}

variable "client_secret" {
  default = ""
}

variable "tenant_id" {
  default = "902eab19-c66d-43b3-91e5-d4c00ec64e88"
}
