locals {
  subscriptions = [
    {
      name = "Pay-As-You-Go",
      id   = var.management_subscription_id
    }
  ]
}

resource "azurerm_subscription_policy_assignment" "defender_for_cloud_policy_assignment" {
  for_each             = { for subscription in local.subscriptions : subscription.name => subscription }
  name                 = "${each.key} - ${var.policy_name}"
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/${var.policy_definition_id}"
  subscription_id      = "/subscriptions/${each.value.id}"
}
