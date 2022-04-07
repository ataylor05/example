data "azurerm_key_vault" "keyvault_ops" {
  name                = "teokyllckv"
  resource_group_name = "Vault"
}

data "azurerm_key_vault" "destination" {
  name                = "dest"
  resource_group_name = "Vault"
}

# This is a list of all secret names, regardless of type
data "azurerm_key_vault_secrets" "ops_secrets" {
  key_vault_id = data.azurerm_key_vault.keyvault_ops.id
}

# This iterates over the secret list and creates an indexed object
data "azurerm_key_vault_secret" "ops_secrets_object" {
  for_each = toset(data.azurerm_key_vault_secrets.ops_secrets.names)
  name         = each.key
  key_vault_id = data.azurerm_key_vault.keyvault_ops.id
}

# This creates a list of secret names where the field content_type is a TLS cert, and has a matching prefix
data "azurerm_key_vault_secret" "ops_tls_secret_list" {
  for_each = {
    for key, value in data.azurerm_key_vault_secret.ops_secrets_object :
    key => value if ((value.content_type == "application/x-pem-file") || (value.content_type == "application/x-pkcs12") && (trimprefix(value.name, local.tls_cert_prefix) != value.name))
  }
  name         = each.key
  key_vault_id = data.azurerm_key_vault.keyvault_ops.id
}

# This creates a list of certificate names where the field content_type is a TLS cert, and has a matching prefix
data "azurerm_key_vault_certificate" "ops_tls_cert_list" {
  for_each = {
    for key, value in data.azurerm_key_vault_secret.ops_secrets_object :
    key => value if ((value.content_type == "application/x-pem-file") || (value.content_type == "application/x-pkcs12") && (trimprefix(value.name, local.tls_cert_prefix) != value.name))
  }
  name         = each.key
  key_vault_id = data.azurerm_key_vault.keyvault_ops.id
}

# This is a list of regular secrets matching the prefix
data "azurerm_key_vault_secret" "ops_secret_list" {
  for_each = {
    for key, value in data.azurerm_key_vault_secret.ops_secrets_object :
    key => value if (trimprefix(value.name, local.secrets_presfix) != value.name)
  }
  name         = each.key
  key_vault_id = data.azurerm_key_vault.keyvault_ops.id
}
