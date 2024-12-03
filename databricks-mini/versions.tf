terraform {
  required_providers {
    databricks = {
      source  = "databrickslabs/databricks"
      version = "~> 1.14.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "databricks" {
  host  = var.databricks_host
  token = var.databricks_token
}