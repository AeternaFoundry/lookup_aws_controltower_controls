variable "controltower_controls_lookup" {
  description = <<EOT
Map of controltower_controls_lookup, attributes below
Required:
    - target_identifier
Optional:
    - region
EOT

  type = map(object({
    target_identifier = string
    region            = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

