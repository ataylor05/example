policy_name = "Azure Security Benchmark"
policy_definition_id = "1f3afdf9-d0c9-4c3d-847f-89da613e70a8"
management_enchanced_security_plans = ["Containers", "KeyVaults", "StorageAccounts"]
microservices_enchanced_security_plans = ["Containers", "KeyVaults", "KubernetesService", "StorageAccounts"]
network_enchanced_security_plans = ["Arm", "Dns"]
subscriptions = [
  {
    name = "Pay-As-You-Go",
    id   = "b891fe0b-97e6-46e1-a7d4-1e3bdc4576bb"
  }
] 
