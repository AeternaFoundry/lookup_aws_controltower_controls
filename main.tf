data "aws_controltower_controls" "controltower_controls_lookup" {
  for_each = var.controltower_controls_lookup

  target_identifier = each.value.target_identifier
  region            = each.value.region
}

