resource "intersight_fabric_fc_network_policy" "brattice-A" {
  name = "brattice-A"
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

  enable_trunking = false
}

resource "intersight_fabric_vsan" "vsan101" {
  name = "vsan101"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

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

  enable_trunking = false
}

resource "intersight_fabric_vsan" "vsan102" {
  name = "vsan102"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  default_zoning = "Enabled"
  vsan_scope     = "Storage"
  fcoe_vlan      = 102
  vsan_id        = 102

  fc_network_policy {
    moid = intersight_fabric_fc_network_policy.brattice-B.moid
  }
}
