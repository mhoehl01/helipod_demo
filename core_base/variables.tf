# /--------------- Credentials ---------------/

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

variable "az_region" {
  type    = string
  default = "West Europe"
}
