variable "subscription" {
  description = "Azure subscription to apply policy towards."
  type        = string
}

variable "policy_name" {
  description = "Azure policy name."
  type        = string
}

variable "policy_definition_id" {
  description = "Azure policy definition id."
  type        = string
}
