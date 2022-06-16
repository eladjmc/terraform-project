# Blob creation and uploading terraform state Module
 <img src="https://i.pinimg.com/originals/64/58/b2/6458b28c73c59074f9a1f00aa4defea2.png" width="200" height="200" />

#### This module you will create a blob for you and will upload the terraform state to it.


## Requierments

1) you will need to "hardcode" a unique name to name attribute of "tf_state_blob_account"
2) you will need to make sure sending value of "resource_group_name" and "resource_group_location" to the module from you root.
3) you will need to make sure that in the root file you have a key lock for tfstate
 ## Using the module
 example:
 ```python
 module "store_to_blob" {
  source                  = "../modules/blob_create_update_module"
  resource_group_name     = azurerm_resource_group.terraform_rg.name
  resource_group_location = azurerm_resource_group.terraform_rg.location
}
```
