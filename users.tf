# data "azuread_user" "aad_user" {
#   for_each            = toset(var.avd-users)
#   user_principal_name = format("%s", each.key)
# }

data "azurerm_role_definition" "role1" { # access an existing built-in role
  name = "Virtual Machine Administrator Login"
}

data "azurerm_role_definition" "role2" { # access an existing built-in role
  name = "Virtual Machine User Login"
}

data "azuread_user" "existing_users" {
  for_each            = toset(var.user_principal_names)
  user_principal_name = each.key
}

resource "azurerm_role_assignment" "Mudassir-role" {
  for_each           = data.azuread_user.existing_users
  scope              = azurerm_virtual_desktop_application_group.dag.id
  role_definition_id = data.azurerm_role_definition.role1.id
  principal_id       = each.value.object_id
}


