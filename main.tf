resource "azurerm_resource_group" "log_analytics_rg" {
  name     = var.resource_group_name
  location = var.region
}

resource "azurerm_log_analytics_workspace" "log_analytics_workspace" {
  name                = var.workspace_name
  location            = var.region
  resource_group_name = azurerm_resource_group.log_analytics_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = var.workspace_log_retention
  tags                = var.common_tags
}


variable "workspace_name" {}
variable "resource_group_name" {}
variable "region" {}
variable "common_tags" {}
variable "workspace_log_retention" {}
output "log_analytics_rg_id" {
  description = "Log Analytics Resource Group ID"
  value       = azurerm_resource_group.log_analytics_rg.id
}

output "log_analytics_rg_name" {
  description = "Log Analytics Resource Group ID"
  value       = azurerm_resource_group.log_analytics_rg.name
}

output "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID"
  value       = azurerm_log_analytics_workspace.log_analytics_workspace.id
}

output "log_analytics_customer_id" {
  description = "The Workspace (or Customer) ID for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.log_analytics_workspace.workspace_id
}

output "log_analytics_workspace_primary_shared_key" {
  description = "The Primary shared key for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.log_analytics_workspace.primary_shared_key
  sensitive   = true
}
