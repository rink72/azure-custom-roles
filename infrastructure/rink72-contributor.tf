resource "azurerm_role_definition" "rink72_contributor" {
  name        = "Rink72 Contributor"
  scope       = data.azurerm_management_group.corp_root.id
  description = "Rink72 Contributor"

  permissions {
    actions = [
      "*"
    ]
    not_actions = [
      "Microsoft.Authorization/*/Delete",
      "Microsoft.Authorization/*/Write",
      "Microsoft.Authorization/elevateAccess/Action",
      "Microsoft.Blueprint/blueprintAssignments/write",
      "Microsoft.Blueprint/blueprintAssignments/delete",
      "Microsoft.Compute/galleries/share/action",
      "Microsoft.Purview/consents/write",
      "Microsoft.Purview/consents/delete"
    ]
  }

  assignable_scopes = [
    data.azurerm_management_group.corp_root.id
  ]
}
