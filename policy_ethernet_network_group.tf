resource "intersight_fabric_eth_network_group_policy" "nxos" {
  name = "nxos"
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

  vlan_settings {
    native_vlan   = 1
    allowed_vlans = format("%s", join(",", [for e in var.network_map_nxos : e.vlan]))
  }
}

resource "intersight_fabric_eth_network_group_policy" "aci" {
  name = "aci"
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

  vlan_settings {
    native_vlan   = 1
    allowed_vlans = format("%s", join(",", [for e in var.network_map_aci : e.vlan]))
  }
}

resource "intersight_fabric_eth_network_group_policy" "vlan-840-native" {
  name = "vlan-840-native"
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

  vlan_settings {
    native_vlan   = var.network_map_nxos.brattice_nxos_840.vlan
    allowed_vlans = var.network_map_nxos.brattice_nxos_840.vlan
  }
}

resource "intersight_fabric_eth_network_group_policy" "vlan-1500-native" {
  name = "vlan-1500-native"
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

  vlan_settings {
    native_vlan   = var.network_map_aci.aci_1500.vlan
    allowed_vlans = var.network_map_aci.aci_1500.vlan
  }
}
