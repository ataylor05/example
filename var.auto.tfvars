subscriptions = ""
policy_name = ""
policy_definition_id = ""

subnets = [
  {
    name              = "WebContainer",
    cidr              = ["10.125.96.0/23"],
    service_endpoints = ["Microsoft.Sql", "Microsoft.KeyVault", "Microsoft.AzureCosmosDB", "Microsoft.Storage"],
    "nsg_rules" = [
      {
        "name"                       = "Allow-FrontDoor-In"
        "priority"                   = 100
        "direction"                  = "Inbound"
        "access"                     = "Allow"
        "protocol"                   = "Tcp"
        "source_port_range"          = "*"
        "destination_port_ranges"    = "80,443"
        "source_address_prefix"      = "AzureFrontDoor.Backend"
        "destination_address_prefix" = "*"
      },
      {
        "name"                       = "Allow-VPN-In"
        "priority"                   = 110
        "direction"                  = "Inbound"
        "access"                     = "Allow"
        "protocol"                   = "Tcp"
        "source_port_range"          = "*"
        "destination_port_ranges"    = "80,443"
        "source_address_prefixes"    = "162.248.84.10/32,4.1.91.66/32,162.248.84.1/32,208.184.224.33/32,38.122.189.67/32"
        "destination_address_prefix" = "*"
      }
    ]
  }
]
