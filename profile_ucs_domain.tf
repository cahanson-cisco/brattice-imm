resource "intersight_fabric_switch_cluster_profile" "brattice-6454" {
  name = "brattice-6454"
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
  type = "instance"
}

resource "intersight_fabric_switch_profile" "brattice-6454-A" {
  name = "brattice-6454-A"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  type = "instance"

  policy_bucket {
    moid        = intersight_fabric_eth_network_policy.brattice-vlans.moid
    object_type = intersight_fabric_eth_network_policy.brattice-vlans.object_type
  }
  policy_bucket {
    moid        = intersight_fabric_fc_network_policy.brattice-A.moid
    object_type = intersight_fabric_fc_network_policy.brattice-A.object_type
  }
  policy_bucket {
    moid        = intersight_fabric_port_policy.brattice-6454-A.moid
    object_type = intersight_fabric_port_policy.brattice-6454-A.object_type
  }
  policy_bucket {
    moid        = intersight_ntp_policy.brattice.moid
    object_type = intersight_ntp_policy.brattice.object_type
  }
  policy_bucket {
    moid        = intersight_fabric_switch_control_policy.direct-attached.moid
    object_type = intersight_fabric_switch_control_policy.direct-attached.object_type
  }
  policy_bucket {
    moid        = intersight_fabric_system_qos_policy.default.moid
    object_type = intersight_fabric_system_qos_policy.default.object_type
  }
  policy_bucket {
    moid        = intersight_networkconfig_policy.brattice.moid
    object_type = intersight_networkconfig_policy.brattice.object_type
  }

  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.brattice-6454.moid
  }
}
resource "intersight_fabric_switch_profile" "brattice-6454-B" {
  name = "brattice-6454-B"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  type = "instance"

  policy_bucket {
    moid        = intersight_fabric_eth_network_policy.brattice-vlans.moid
    object_type = intersight_fabric_eth_network_policy.brattice-vlans.object_type
  }
  policy_bucket {
    moid        = intersight_fabric_fc_network_policy.brattice-B.moid
    object_type = intersight_fabric_fc_network_policy.brattice-B.object_type
  }
  policy_bucket {
    moid        = intersight_fabric_port_policy.brattice-6454-B.moid
    object_type = intersight_fabric_port_policy.brattice-6454-B.object_type
  }
  policy_bucket {
    moid        = intersight_ntp_policy.brattice.moid
    object_type = intersight_ntp_policy.brattice.object_type
  }
  policy_bucket {
    moid        = intersight_fabric_switch_control_policy.direct-attached.moid
    object_type = intersight_fabric_switch_control_policy.direct-attached.object_type
  }
  policy_bucket {
    moid        = intersight_fabric_system_qos_policy.default.moid
    object_type = intersight_fabric_system_qos_policy.default.object_type
  }
  policy_bucket {
    moid        = intersight_networkconfig_policy.brattice.moid
    object_type = intersight_networkconfig_policy.brattice.object_type
  }

  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.brattice-6454.moid
  }
}

data "intersight_asset_device_registration" "brattice" {
  device_hostname = ["BRATTICE"]
  platform_type   = "UCSFIISM"
}
