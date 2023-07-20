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

data "intersight_asset_device_registration" "brattice" {
  device_hostname = ["BRATTICE"]
  platform_type   = "UCSFIISM"
}