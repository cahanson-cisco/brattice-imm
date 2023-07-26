resource "intersight_fabric_switch_cluster_profile" "brattice-6454" {
  name = "brattice-6454"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }
  type = "instance"
}

resource "intersight_fabric_switch_profile" "brattice-6454-A" {
  name = "brattice-6454-A"
  tags = [local.terraform]

  type = "instance"
  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.brattice-6454.moid
  }
}

resource "intersight_fabric_switch_profile" "brattice-6454-B" {
  name = "brattice-6454-B"
  tags = [local.terraform]
  type = "instance"

  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.brattice-6454.moid
  }
}

resource "intersight_fabric_switch_cluster_profile" "brattice-6454-pb" {
  name = "brattice-6454-pb"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }
  type = "instance"
}

resource "intersight_fabric_switch_profile" "brattice-6454-A-pb" {
  name = "brattice-6454-A-pb"
  tags = [local.terraform]

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
    moid = intersight_fabric_switch_cluster_profile.brattice-6454-pb.moid
  }
}

resource "intersight_fabric_switch_profile" "brattice-6454-B-pb" {
  name = "brattice-6454-B-pb"
  tags = [local.terraform]
  type = "instance"

  policy_bucket { # VLAN Configuration
    moid        = intersight_fabric_eth_network_policy.brattice-vlans.moid
    object_type = intersight_fabric_eth_network_policy.brattice-vlans.object_type
  }

  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.brattice-6454-pb.moid
  }
}

data "intersight_asset_device_registration" "brattice" {
  device_hostname = ["BRATTICE"]
  platform_type   = "UCSFIISM"
}
