# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

terraform {
  cloud {
    organization = "Cherry-Enterprise-Cloud"

    workspaces {
      name = "azure_cloud_use_cases"
    }
  }
}

# Provider Block

provider "azurerm" {
skip_provider_registration = "true"
features {}
}


