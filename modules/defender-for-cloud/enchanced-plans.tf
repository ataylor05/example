resource "azurerm_security_center_subscription_pricing" "enchanced_plans" {
  for_each      = toset( var.enchanced_security_plans )
  tier          = "Standard"
  resource_type = each.key
}
