module "defender_for_cloud_basic" {
    source                   = "./modules/defender-for-cloud-basic"
    policy_name              = var.policy_name
    policy_definition_id     = var.policy_definition_id
    azure_subscription_id    = var.azure_subscription_id
}

module "management_defender_for_cloud_plans" {
    source                   = "./modules/defender-for-cloud-enchanced"
    enchanced_security_plans = var.management_enchanced_security_plans
}
