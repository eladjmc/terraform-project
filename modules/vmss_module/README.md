
<img src="https://4gravitons.files.wordpress.com/2014/03/tenoldcomputers.png?w=768&h=275" width="600" height="200" />

#### This module you will create a VMSS with the base of 2 computer at default with standard B1s hardware + mounting a costume image on the vmss.


## Requierments
 - make sure you are working with a compatible version of terraform and the amazon provider
 - you will need to make sure sending value of the needed variable to the module from you root(can be found in the root documentation under "Requierments").
 - https://github.com/eladjmc/terraform-project


 ## Using the module
 example:
 ```python
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
```
