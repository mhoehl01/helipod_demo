terraform {
  cloud {
    organization = "cw_playground_mhoehl"

    workspaces {
      name = "core_base"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}