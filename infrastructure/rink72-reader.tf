resource "azurerm_role_definition" "rink72_reader" {
  name        = "Rink72 Reader"
  scope       = data.azurerm_management_group.corp_root.id
  description = "Rink72 Reader can view all resources"

  permissions {
    actions = [
      "*/read"
    ]
  }

  assignable_scopes = [
    data.azurerm_management_group.corp_root.id
  ]
}
