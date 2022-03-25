# Common
Environment           = "Dev"
application_shortname = "CloudOps"
region                = "WestUs2"

# Azure
azure_subscription_id               = "b9b5696f-d9dd-40db-a57b-1a96bdfcdb76" # Management
azure_tenant_id                     = "5221c46c-b7b6-41e0-a534-78064848cd54"
azure_microservices_subscription_id = "831e2cbd-6607-43b1-b7d5-83d4d66f154e"
azure_networking_subscription_id    = "46012880-a013-487e-91ab-66ebc36e097f"
subscriptions                       = ["management", "microservices", "network"]

#Networking Variables
vhub_region = ["WestEurope"]
deployVhub  = true
vhub_address_prefixes = {
  "WestEurope" = "10.132.9.0/24"
  #"GermanyWestCentral" = "10.132.7.0/24"
}

vwan_resource_group_name = "DevVNetHubWestUs"
vwan_name                = "DevVWanWestUs"
scanner_enabled          = true

# Defender for Cloud
policy_name          = "Azure Security Benchmark"
policy_definition_id = "1f3afdf9-d0c9-4c3d-847f-89da613e70a8"
# 
management_enchanced_security_plans    = ["Containers", "KeyVaults", "StorageAccounts"]
microservices_enchanced_security_plans = ["Containers", "KeyVaults", "KubernetesService", "StorageAccounts"]
network_enchanced_security_plans       = ["Arm", "Dns"]
