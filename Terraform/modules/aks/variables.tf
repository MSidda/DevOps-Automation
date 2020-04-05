variable "agent_count" {
  default     = 1
  description = "Number of worker nodes to be provisioned"
}
variable "username" {
  default = "qldtfuser"
}
variable "ssh_public_key" {
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEArlTF4iXqJrYLXMHBfMmVuQ2h0vShblXOMCgoRucZserZSa1oWv8n7qbZPDctf/iH8ALI8O9wh07+qECj/PMemMF0jqMJgzHzPUmew9n6wraoP+EmEySgYpwVlg74ViykHR6lmbnGsvb5eNC+0pEyztUoyRydaGgNjsw82HXLXAyEASOaxfx46daW2vf+ZmsjgEa+yyfHdNyTFO1rZk7TapN7xtUilb0raEpFAHHdHOFVeYZvZqg3JifYd4bDKR5bDx9+4c+YUkikXuEvI1PMPpNJZUfgROyQESLFRLlJ7IQ5ChuT7ALgOCZTbG63CUWwAuK9nomyQrEUV5p/SHgNgw== rsa-key-20190129"
  description = "SSH public key for worker nodes"
}

variable "dns_prefix" {
  default     = "akscluster"
  description = "A prefix used for dns name"
}

variable "cluster_name" {
  default     = "aks-cluster"
  description = "AKS cluster name"
}

variable "resource_group" {
  default     = "aaa-sidda-rg"
  description = "Resource Group name of the cluster"
}

variable "location" {
  default     = "West Europe"
  description = "The Azure Region in which all resources in this project should be provisioned"
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
