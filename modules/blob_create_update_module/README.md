# Blob creation and uploading terraform state Module

#### This module you will create a blob for you and will upload the terraform state to it.


## Requierments

1) you will need to "hardcode" a unique name to name attribute of "tf_state_blob_account"
2) you will need to make sure sending value of "resource_group_name" and "resource_group_location" to the module from you root.
3) you will need to make sure that in the root file you have a key lock for tfstate
