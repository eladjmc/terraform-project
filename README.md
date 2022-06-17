 ![image](https://bootcamp.rhinops.io/images/terraform-logo.png)


## Terraform Installing

We have to use a terraform platform and let's get practice first with a simple hands on manual

https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/azure-get-started

https://docs.microsoft.com/en-us/azure/developer/terraform/create-linux-virtual-machine-with-infrastructure

# Instructions

#### first you will need to install "Terraform" and connect it to your azure account.


## Terraform Installation

We have to use a terraform platform and let's get practice first with a simple hands on manual

https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/azure-get-started

https://docs.microsoft.com/en-us/azure/developer/terraform/create-linux-virtual-machine-with-infrastructure

## Setting things up

1) After cloning this repository you will need to set up all the needed variables mantion bellow in the documentation under "Requierments".

2) You will need to run "terraform init" to make sure you have versions and providers in line with the one on the project

```python
terraform init
```
3) After that you can use "terraform plan" / "terraform apply"

```python
terraform apply
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.0.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_store_to_blob"></a> [store\_to\_blob](#module\_store\_to\_blob) | ../modules/blob_create_update_module | n/a |
| <a name="module_weight_app_vmss"></a> [weight\_app\_vmss](#module\_weight\_app\_vmss) | ../modules/vmss_module | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_lb.app_load_balancer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.bpepool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_nat_pool.lbnatpool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_nat_pool) | resource |
| [azurerm_lb_probe.app_lb_prob](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.lb_rule_8080](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) | resource |
| [azurerm_network_security_group.app_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_security_group.db_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_postgresql_flexible_server.postgres_server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server) | resource |
| [azurerm_postgresql_flexible_server_configuration.db-config-no-ssl](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_configuration) | resource |
| [azurerm_private_dns_zone.private_dns_zone](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.private_dns_zone_vnl](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_public_ip.my_lb_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.terraform_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_ssh_public_key.my_key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key) | resource |
| [azurerm_subnet.app-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.database-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet_network_security_group_association.app_nsg_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association.db_nsg_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_virtual_network.terraform_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | Vmss password | `string` | n/a | yes |
| <a name="input_admin_user"></a> [admin\_user](#input\_admin\_user) | Vmss admin user name | `string` | n/a | yes |
| <a name="input_app_subnet_address_range"></a> [app\_subnet\_address\_range](#input\_app\_subnet\_address\_range) | The vmss subnet ip ranges - format x.x.x.x/x | `string` | n/a | yes |
| <a name="input_authorized_ip_address"></a> [authorized\_ip\_address](#input\_authorized\_ip\_address) | The ip that can access vmss via port 22 | `string` | n/a | yes |
| <a name="input_database_subnet_address_range"></a> [database\_subnet\_address\_range](#input\_database\_subnet\_address\_range) | The database subnet ip rages -format x.x.x.x/x -cannot overlap with vmss subnet- | `string` | n/a | yes |
| <a name="input_postgres_admin_username"></a> [postgres\_admin\_username](#input\_postgres\_admin\_username) | Posgress admin user name | `string` | n/a | yes |
| <a name="input_postgres_password"></a> [postgres\_password](#input\_postgres\_password) | Postgres password | `string` | n/a | yes |
| <a name="input_postgres_sku_name"></a> [postgres\_sku\_name](#input\_postgres\_sku\_name) | Holds the machine type for posgtres service | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location of the resource group - location name | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_vnet_address_range"></a> [vnet\_address\_range](#input\_vnet\_address\_range) | The virtual network range format: x.x.x.x/x | `string` | n/a | yes |
| <a name="input_weight_app_image_gallery_name"></a> [weight\_app\_image\_gallery\_name](#input\_weight\_app\_image\_gallery\_name) | ami gallery name | `string` | n/a | yes |
| <a name="input_weight_app_image_name"></a> [weight\_app\_image\_name](#input\_weight\_app\_image\_name) | ami name | `string` | n/a | yes |
| <a name="input_weight_app_image_resource_group_name"></a> [weight\_app\_image\_resource\_group\_name](#input\_weight\_app\_image\_resource\_group\_name) | Name of the resource group that holds the ami | `string` | n/a | yes |
| <a name="input_weight_app_image_version_name"></a> [weight\_app\_image\_version\_name](#input\_weight\_app\_image\_version\_name) | ami version | `string` | n/a | yes |
| <a name="input_weight_app_key"></a> [weight\_app\_key](#input\_weight\_app\_key) | Public key to be created | `string` | n/a | yes |
| <a name="input_weight_app_name_prefix"></a> [weight\_app\_name\_prefix](#input\_weight\_app\_name\_prefix) | Variable that hold the prefixed name of the project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vmss_password"></a> [vmss\_password](#output\_vmss\_password) | taking vmss password output from vmss module and making it root output so it can be viewed |

