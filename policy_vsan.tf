resource "intersight_fabric_fc_network_policy" "brattice-A" {
  name = "brattice-A"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  enable_trunking = false

  profiles {
    moid        = intersight_fabric_switch_profile.brattice-6454-A.moid
    object_type = intersight_fabric_switch_profile.brattice-6454-A.object_type
  }
}

resource "intersight_fabric_vsan" "vsan101" {
  name = "vsan101"
  tags = [local.terraform]

  default_zoning = "Enabled"
  vsan_scope     = "Storage"
  fcoe_vlan      = 101
  vsan_id        = 101

  fc_network_policy {
    moid = intersight_fabric_fc_network_policy.brattice-A.moid
  }
}

resource "intersight_fabric_fc_network_policy" "brattice-B" {
  name = "brattice-B"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  enable_trunking = false

  profiles {
    moid        = intersight_fabric_switch_profile.brattice-6454-B.moid
    object_type = intersight_fabric_switch_profile.brattice-6454-B.object_type
  }
}

resource "intersight_fabric_vsan" "vsan102" {
  name = "vsan102"
  tags = [local.terraform]

  default_zoning = "Enabled"
  vsan_scope     = "Storage"
  fcoe_vlan      = 102
  vsan_id        = 102

  fc_network_policy {
    moid = intersight_fabric_fc_network_policy.brattice-B.moid
  }
}