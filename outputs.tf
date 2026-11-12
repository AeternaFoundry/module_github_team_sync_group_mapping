output "team_sync_group_mappings_id" {
  description = "Map of id values across all team_sync_group_mappings, keyed the same as var.team_sync_group_mappings"
  value       = { for k, v in github_team_sync_group_mapping.team_sync_group_mappings : k => v.id }
}
output "team_sync_group_mappings_etag" {
  description = "Map of etag values across all team_sync_group_mappings, keyed the same as var.team_sync_group_mappings"
  value       = { for k, v in github_team_sync_group_mapping.team_sync_group_mappings : k => v.etag }
}
output "team_sync_group_mappings_group" {
  description = "Map of group values across all team_sync_group_mappings, keyed the same as var.team_sync_group_mappings"
  value       = { for k, v in github_team_sync_group_mapping.team_sync_group_mappings : k => v.group }
}
output "team_sync_group_mappings_team_slug" {
  description = "Map of team_slug values across all team_sync_group_mappings, keyed the same as var.team_sync_group_mappings"
  value       = { for k, v in github_team_sync_group_mapping.team_sync_group_mappings : k => v.team_slug }
}

