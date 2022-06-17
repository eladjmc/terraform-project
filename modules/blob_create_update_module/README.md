# Blob creation and uploading terraform state Module
 <img src="https://i.pinimg.com/originals/64/58/b2/6458b28c73c59074f9a1f00aa4defea2.png" width="200" height="200" />

#### This module you will create a blob for you and will upload the terraform state to it.


## Requierments

1) you will need to "hardcode" all the values of your storage
3) you will need to make sure that in the root file you have a key lock for tfstate
 ## Using the module
 example:
 ```python
 module "store_to_blob" {
  source                  = "../modules/blob_create_update_module"
}
```
