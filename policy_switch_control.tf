resource "intersight_fabric_switch_control_policy" "direct-attached" {
  name = "direct-attached"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }
  fc_switching_mode = "switch"
}
