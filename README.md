# API REST - Main IaC
<br>
<img src="https://drive.google.com/uc?export=view&id=1spIcWkUkR1Ws0HZCPW1dn5fxL87BSCEp" width="1000">
<br>

Repositório principal do projeto API REST contendo toda a IAC para provisionamento do mesmo. Note que, antes do seu uso, é necessário aplicar o projeto de fundação: LINKAQUI


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | 2.36.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_container_registry.registry](https://registry.terraform.io/providers/digitalocean/digitalocean/2.36.0/docs/resources/container_registry) | resource |
| [digitalocean_database_cluster.database](https://registry.terraform.io/providers/digitalocean/digitalocean/2.36.0/docs/resources/database_cluster) | resource |
| [digitalocean_database_firewall.trusted_sources](https://registry.terraform.io/providers/digitalocean/digitalocean/2.36.0/docs/resources/database_firewall) | resource |
| [digitalocean_kubernetes_cluster.doks](https://registry.terraform.io/providers/digitalocean/digitalocean/2.36.0/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_project.project](https://registry.terraform.io/providers/digitalocean/digitalocean/2.36.0/docs/resources/project) | resource |
| [digitalocean_vpc.vpc](https://registry.terraform.io/providers/digitalocean/digitalocean/2.36.0/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_engine"></a> [database\_engine](#input\_database\_engine) | Tipo de banco que será usado nesse projeto | `string` | `"mongodb"` | no |
| <a name="input_database_node_count"></a> [database\_node\_count](#input\_database\_node\_count) | Valor mínimo de nodes para o database | `string` | `"1"` | no |
| <a name="input_database_version"></a> [database\_version](#input\_database\_version) | A versão da Engine de banco escolhida para o projeto | `string` | `"6"` | no |
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | Insira aqui ou crie um tfvars 'gitignorado' para esse valor | `string` | `""` | no |
| <a name="input_doks_auto_upgrade"></a> [doks\_auto\_upgrade](#input\_doks\_auto\_upgrade) | Valor verdadeiro ou falso para o autoupgrade do cluster kubernetes | `string` | `"false"` | no |
| <a name="input_doks_node_auto_scale"></a> [doks\_node\_auto\_scale](#input\_doks\_node\_auto\_scale) | Valor verdadeiro ou falso para o autoscale dos worker nodes do cluster kubernetes | `string` | `"true"` | no |
| <a name="input_doks_registry_integration"></a> [doks\_registry\_integration](#input\_doks\_registry\_integration) | Valor verdadeiro ou falso para a integração do cluster kubernetes com o registro de imagens de container | `string` | `"true"` | no |
| <a name="input_doks_version"></a> [doks\_version](#input\_doks\_version) | Versão do cluster kubernetes gerenciado | `string` | `"1.29.1-do.0"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente onde será provisionada a Infrestrutura | `string` | `"tst"` | no |
| <a name="input_maintenance_policy_day"></a> [maintenance\_policy\_day](#input\_maintenance\_policy\_day) | Dia para janela de manuteção | `string` | `"saturday"` | no |
| <a name="input_maintenance_policy_start_time"></a> [maintenance\_policy\_start\_time](#input\_maintenance\_policy\_start\_time) | Horário de início para janela de manutenção | `string` | `"03:00"` | no |
| <a name="input_my_ipv4_address"></a> [my\_ipv4\_address](#input\_my\_ipv4\_address) | Insira aqui ou crie um tfvars 'gitignorado' para esse valor | `string` | `""` | no |
| <a name="input_project_description"></a> [project\_description](#input\_project\_description) | n/a | `string` | `"Esse projeto agrupa os recursos criados pela IaC Main."` | no |
| <a name="input_project_environment"></a> [project\_environment](#input\_project\_environment) | Tipo de Ambiente que estamos lidando 'dev', 'prd' ... | `string` | `"Production"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Nome do projeto dentro da Digital Ocean apenas | `string` | `"API Main"` | no |
| <a name="input_project_purpose"></a> [project\_purpose](#input\_project\_purpose) | Proposta desse projeto | `string` | `"Service or API"` | no |
| <a name="input_registry_name"></a> [registry\_name](#input\_registry\_name) | Nome do recurso de registro de imagens de containers | `string` | `"registry-ntconsult-cr"` | no |
| <a name="input_registry_region"></a> [registry\_region](#input\_registry\_region) | Região do recurso de registro de imagens de containers | `string` | `"sfo2"` | no |
| <a name="input_registry_tier_slug"></a> [registry\_tier\_slug](#input\_registry\_tier\_slug) | Tipo de plano para o recurso de registro de imagens de containers | `string` | `"basic"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_doks_endpoint"></a> [doks\_endpoint](#output\_doks\_endpoint) | n/a |
| <a name="output_doks_engine_version"></a> [doks\_engine\_version](#output\_doks\_engine\_version) | n/a |
| <a name="output_doks_id"></a> [doks\_id](#output\_doks\_id) | n/a |
| <a name="output_doks_name"></a> [doks\_name](#output\_doks\_name) | n/a |
| <a name="output_doks_urn"></a> [doks\_urn](#output\_doks\_urn) | n/a |
| <a name="output_mongodb_host"></a> [mongodb\_host](#output\_mongodb\_host) | n/a |
| <a name="output_mongodb_id"></a> [mongodb\_id](#output\_mongodb\_id) | n/a |
| <a name="output_mongodb_name"></a> [mongodb\_name](#output\_mongodb\_name) | n/a |
<!-- END_TF_DOCS -->