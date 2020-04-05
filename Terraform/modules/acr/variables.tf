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
  default = "qldtfuser"
}

variable "subscription_id" {
  default = "976709cf-14cb-4d18-a8c1-68a602b93aed"
}

variable "client_id" {
  default = "b850400c-a13f-4208-9f84-e1deb8086dd4"
}

variable "client_secret" {
  default = "b9d0e20f-b1fa-4d4c-99ac-57f726f43804"
}

variable "tenant_id" {
  default = "902eab19-c66d-43b3-91e5-d4c00ec64e88"
}
