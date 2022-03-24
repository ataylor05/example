resource "azurerm_policy_assignment" "policy_assignment" {
  name                 = var.policy_name
  scope                = "/subscriptions/${var.subscription}"
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/${policy_definition_id}"
}
