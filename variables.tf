variable "subscriptions" {
  description = "Azure subscription to apply policy towards."
  type        = list
}

variable "policy_name" {
  description = "Azure policy name."
  type        = string
}

variable "policy_definition_id" {
  description = "Azure policy definition id."
  type        = string
}

variable "management_enchanced_security_plans" {
  description = "List of resource types to enable enchanced security plans.  Possible values are AppServices, ContainerRegistry, KeyVaults, KubernetesService, SqlServers, SqlServerVirtualMachines, StorageAccounts, VirtualMachines, Arm, OpenSourceRelationalDatabases, Containers and Dns."
  type        = list
  default     = null
}

variable "microservices_enchanced_security_plans" {
  description = "List of resource types to enable enchanced security plans.  Possible values are AppServices, ContainerRegistry, KeyVaults, KubernetesService, SqlServers, SqlServerVirtualMachines, StorageAccounts, VirtualMachines, Arm, OpenSourceRelationalDatabases, Containers and Dns."
  type        = list
  default     = null
}

variable "network_enchanced_security_plans" {
  description = "List of resource types to enable enchanced security plans.  Possible values are AppServices, ContainerRegistry, KeyVaults, KubernetesService, SqlServers, SqlServerVirtualMachines, StorageAccounts, VirtualMachines, Arm, OpenSourceRelationalDatabases, Containers and Dns."
  type        = list
  default     = null
}
