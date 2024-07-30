variable "location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "AVD-RG"
  description = "Name of the Resource group in which to deploy service objects"
}

variable "workspace" {
  type        = string
  description = "Name of the Azure Virtual Desktop workspace"
  default     = "AVD-TF-Workspace1"
}

variable "hostpool" {
  type        = string
  description = "Name of the Azure Virtual Desktop host pool"
  default     = "AVD-TF-HP1"
}

variable "rfc3339" {
  type        = string
  default     = "2024-08-01T12:43:13Z"
  description = "Registration token expiration"
}

variable "prefix" {
  type        = string
  default     = "avdtf"
  description = "Prefix of the name of the AVD machine(s)"
}

variable "user_principal_names" {
  type = list(string)
  default = ["abc@onmicrosoft.com",
    "xyz@onmicrosoft.com"
  ]
}