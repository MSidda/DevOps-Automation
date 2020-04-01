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
  default     = "aks-cluster"
  description = "Resource Group name of the cluster"
}

variable "location" {
  default     = "West US 2"
  description = "The Azure Region in which all resources in this project should be provisioned"
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