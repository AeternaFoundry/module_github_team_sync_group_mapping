resource "github_team_sync_group_mapping" "team_sync_group_mappings" {
  for_each = var.team_sync_group_mappings

  team_slug = each.value.team_slug

  dynamic "group" {
    for_each = each.value.group != null ? each.value.group : []
    content {
      group_description = group.value.group_description
      group_id          = group.value.group_id
      group_name        = group.value.group_name
    }
  }
}

