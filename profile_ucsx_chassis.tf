data "intersight_equipment_chassis" "brattice" {
  device_mo_id = data.intersight_asset_device_registration.brattice.results[0].moid
}

resource "intersight_chassis_profile" "brattice-chassis" {
  for_each = { for index, chassis in data.intersight_equipment_chassis.brattice.results :
    chassis.moid => chassis
  }

  name = each.value.name
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  organization {
    moid = local.organization
  }

  target_platform = "FIAttached"
  type            = "instance"

  policy_bucket {
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket {
    moid        = intersight_thermal_policy.thermal["LowPower"].moid
    object_type = intersight_thermal_policy.thermal["LowPower"].object_type
  }
}
