resource "azurerm_role_definition" "rink72_owner" {
  name        = "Rink72 Owner"
  scope       = data.azurerm_management_group.corp_root.id
  description = "Rink72 Owner"

  permissions {
    actions = [
      "*"
    ]
  }

  assignable_scopes = [
    data.azurerm_management_group.corp_root.id
  ]
}
