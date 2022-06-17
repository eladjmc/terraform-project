terraform {
  required_version = ">= 1.2.0"
}

resource "azurerm_storage_blob" "blob_storage_name" {
  name                   = "terraform_state"
  storage_account_name   = "eladtfstateblob12785"
  storage_container_name = "container"
  type                   = "Block"
  source                 = ".terraform/terraform.tfstate"
}

