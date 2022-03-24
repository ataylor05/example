output "defender_for_cloud_policy_assignment_id" {
  value = azurerm_policy_assignment.defender_for_cloud_policy_assignment.id
}

output "defender_for_cloud_policy_assignment_identity" {
  value = azurerm_policy_assignment.defender_for_cloud_policy_assignment.identity
}
