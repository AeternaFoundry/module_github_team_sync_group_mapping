variable "team_sync_group_mappings" {
  description = <<EOT
Map of team_sync_group_mappings, attributes below
Required:
    - team_slug
Optional:
    - group (block):
        - group_description (required)
        - group_id (required)
        - group_name (required)
EOT

  type = map(object({
    team_slug = string
    group = optional(list(object({
      group_description = string
      group_id          = string
      group_name        = string
    })))
  }))
}

