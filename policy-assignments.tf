resource "azurerm_subscription_policy_assignment" "defender_for_cloud_policy_assignment" {
  for_each             = { for subscription in var.subscriptions : subscription.name => subscription }
  name                 = "${each.key} - ${var.policy_name}"
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/${var.policy_definition_id}"
  subscription_id      = "/subscriptions/${each.value.id}"
}

resource "azurerm_security_center_subscription_pricing" "management_plans" {
  for_each      = toset(var.management_enchanced_security_plans)
  provider      = azurerm
  tier          = "Standard"
  resource_type = each.key
}

resource "azurerm_security_center_subscription_pricing" "microservices_plans" {
  for_each      = toset(var.microservices_enchanced_security_plans)
  provider      = azurerm
  tier          = "Standard"
  resource_type = each.key
}

resource "azurerm_security_center_subscription_pricing" "network_plans" {
  for_each      = toset(var.network_enchanced_security_plans)
  provider      = azurerm
  tier          = "Standard"
  resource_type = each.key
}
