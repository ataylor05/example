variable "management_subscription_id" {
  description = "The Azure management subscription id"
  type        = string
}

variable "policy_name" {
  description = "Azure policy name."
  type        = string
}

variable "policy_definition_id" {
  description = "Azure policy definition id."
  type        = string
}

variable "enchanced_security_plans" {
  description = "List of resource types to enable enchanced security plans.  Possible values are AppServices, ContainerRegistry, KeyVaults, KubernetesService, SqlServers, SqlServerVirtualMachines, StorageAccounts, VirtualMachines, Arm, OpenSourceRelationalDatabases, Containers and Dns."
  type        = list(any)
  default     = null
}
