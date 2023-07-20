resource "intersight_macpool_pool" "brattice_mac_a" {
  name = "brattice_mac_a"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  mac_blocks {
    from = "00:25:b5:b7:fa:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [mac_blocks]
  }
}

resource "intersight_macpool_pool" "brattice_mac_b" {
  name = "brattice_mac_b"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  mac_blocks {
    from = "00:25:b5:b7:fb:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [mac_blocks]
  }
}

resource "intersight_macpool_pool" "brattice_mac_failover" {
  name = "brattice_mac_failover"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  mac_blocks {
    from = "00:25:b5:b7:ff:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [mac_blocks]
  }
}