variable "subscriptionId" {
  type = string
}

variable "tenantId" {
  type = string
}

variable "clientId" {
  type = string
}

variable "clientSecret" {
  type = string
}

variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
}

variable "region" {
  description = "The Azure Region in which all resources in this example should be created"
}
