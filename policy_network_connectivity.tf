resource "intersight_networkconfig_policy" "brattice" {
  name = "brattice"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  preferred_ipv4dns_server = "10.0.40.254"
  alternate_ipv4dns_server = ""

  profiles {
    moid        = intersight_fabric_switch_profile.brattice-6454-A.moid
    object_type = intersight_fabric_switch_profile.brattice-6454-A.object_type
  }
  profiles {
    moid        = intersight_fabric_switch_profile.brattice-6454-B.moid
    object_type = intersight_fabric_switch_profile.brattice-6454-B.object_type
  }
}
