# VARIÁVEL PARA USO NO LOCALS E ENVS

variable "environment" {
  description = "Ambiente onde será provisionada a Infrestrutura"
  default     = "tst"
}

# VARIÁVEL DO TOKEN

variable "do_token" {
  type = string
}

# VARIÁVEIS DO CLUSTER DOKS/NODES

variable "doks_version" {
  default     = "1.29.1-do.0"
  description = "Versão do cluster kubernetes gerenciado"
}

variable "doks_registry_integration" {
  default     = "true"
  description = "Valor verdadeiro ou falso para a integração do cluster kubernetes com o registro de imagens de container"
}

variable "doks_node_auto_scale" {
  default     = "true"
  description = "Valor verdadeiro ou falso para o autoscale dos worker nodes do cluster kubernetes"
}

variable "doks_auto_upgrade" {
  default     = "false"
  description = "Valor verdadeiro ou falso para o autoupgrade do cluster kubernetes"
}

variable "maintenance_policy_day" {
  default     = "saturday"
  description = "Dia para janela de manuteção"
}

variable "maintenance_policy_start_time" {
  default     = "03:00"
  description = "Horário de início para janela de manutenção"
}

# VARIÁVEIS DO DATABASE/MONGODB

variable "database_engine" {
  default     = "mongodb"
  description = "Tipo de banco que será usado nesse projeto"
}

variable "database_node_count" {
  default     = "1"
  description = "Valor mínimo de nodes para o database"
}

variable "database_version" {
  default     = "6"
  description = "A versão da Engine de banco escolhida para o projeto"
}

variable "database_api_user" {
  default     = "api-user"
  description = "Usuário para utilização da base de dados do ambiente"
}

variable "database_api_db" {
  default     = "api-db"
  description = "Base de dados para utilização no ambiente"
}

# VARIÁVEIS DO REGISTRY DE CONTAINERS - CR

variable "registry_region" {
  default     = "sfo2"
  description = "Região do recurso de registro de imagens de containers"
}

variable "registry_name" {
  default     = "registry-ntconsult-cr"
  description = "Nome do recurso de registro de imagens de containers"
}

variable "registry_tier_slug" {
  default     = "basic"
  description = "Tipo de plano para o recurso de registro de imagens de containers"
}

# VARIÁVEIS DO PROJECT

variable "project_name" {
  default = "Main Project"
  type    = string
}

variable "project_purpose" {
  default = "Service or API"
  type    = string
}

variable "project_description" {
  default = "This project organizes the resources created by the main IaC."
  type    = string
}