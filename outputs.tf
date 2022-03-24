output "azurerm_subscription_policy_assignment_defender_for_cloud_policy_assignment_id" {
  value = values(azurerm_subscription_policy_assignment.defender_for_cloud_policy_assignment)[*].id
}
