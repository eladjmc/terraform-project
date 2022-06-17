# Creating azure resource group
resource "azurerm_resource_group" "terraform_rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# Creating a public key for the group
resource "azurerm_ssh_public_key" "my_key" {
  name                = "my_key"
  resource_group_name = azurerm_resource_group.terraform_rg.name
  location            = azurerm_resource_group.terraform_rg.location
  public_key          = var.weight_app_key
}

# Creating vmss from module
module "weight_app_vmss" {
  source                               = "../modules/vmss_module"
  weight_app_name_prefix               = var.weight_app_name_prefix
  admin_user                           = var.admin_user
  admin_password                       = var.admin_password
  resource_group_location              = azurerm_resource_group.terraform_rg.location
  resource_group_name                  = azurerm_resource_group.terraform_rg.name
  weight_app_nsg_id                    = azurerm_network_security_group.app_nsg.id
  weight_app_subbnet_id                = azurerm_subnet.app-subnet.id
  lb_bpepool_id                        = azurerm_lb_backend_address_pool.bpepool.id
  lbnatpool_id                         = azurerm_lb_nat_pool.lbnatpool.id
  weight_app_image_version_name        = var.weight_app_image_version_name
  weight_app_image_name                = var.weight_app_image_name
  weight_app_image_gallery_name        = var.weight_app_image_gallery_name
  weight_app_image_resource_group_name = var.weight_app_image_resource_group_name
}

# Loocking the tfstate in order to upload it
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-blob"
    storage_account_name = "eladtfstateblob12785"
    container_name       = "container"
    key                  = "terraform.tfstate"
  }
}

# Creating blob and uploading my tfstate
module "store_to_blob" {
  source                  = "../modules/blob_create_update_module"
}




