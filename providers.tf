terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.64.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "eb71c486-b02c-4a0c-97ed-1526d49e914f"
}

