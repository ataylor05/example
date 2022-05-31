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
