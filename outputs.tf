output "controltower_controls_lookup_id" {
  description = "Map of id values across all controltower_controls_lookup, keyed the same as var.controltower_controls_lookup"
  value       = { for k, v in data.aws_controltower_controls.controltower_controls_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "controltower_controls_lookup_enabled_controls" {
  description = "Map of enabled_controls values across all controltower_controls_lookup, keyed the same as var.controltower_controls_lookup"
  value       = { for k, v in data.aws_controltower_controls.controltower_controls_lookup : k => v.enabled_controls if v.enabled_controls != null && length(v.enabled_controls) > 0 }
}
output "controltower_controls_lookup_region" {
  description = "Map of region values across all controltower_controls_lookup, keyed the same as var.controltower_controls_lookup"
  value       = { for k, v in data.aws_controltower_controls.controltower_controls_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "controltower_controls_lookup_target_identifier" {
  description = "Map of target_identifier values across all controltower_controls_lookup, keyed the same as var.controltower_controls_lookup"
  value       = { for k, v in data.aws_controltower_controls.controltower_controls_lookup : k => v.target_identifier if v.target_identifier != null && length(v.target_identifier) > 0 }
}

