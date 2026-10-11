output "team_sync_group_mappings_id" {
  description = "Map of id values across all team_sync_group_mappings, keyed the same as var.team_sync_group_mappings"
  value       = { for k, v in github_team_sync_group_mapping.team_sync_group_mappings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_sync_group_mappings_etag" {
  description = "Map of etag values across all team_sync_group_mappings, keyed the same as var.team_sync_group_mappings"
  value       = { for k, v in github_team_sync_group_mapping.team_sync_group_mappings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "team_sync_group_mappings_group" {
  description = "Map of group values across all team_sync_group_mappings, keyed the same as var.team_sync_group_mappings"
  value       = { for k, v in github_team_sync_group_mapping.team_sync_group_mappings : k => v.group if v.group != null && length(v.group) > 0 }
}
output "team_sync_group_mappings_team_slug" {
  description = "Map of team_slug values across all team_sync_group_mappings, keyed the same as var.team_sync_group_mappings"
  value       = { for k, v in github_team_sync_group_mapping.team_sync_group_mappings : k => v.team_slug if v.team_slug != null && length(v.team_slug) > 0 }
}

