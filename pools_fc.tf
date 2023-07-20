resource "intersight_fcpool_pool" "brattice_wwnn" {
  name = "brattice_wwnn"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  pool_purpose = "WWNN"
  id_blocks {
    from = "20:00:00:25:b5:b7:20:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [id_blocks]
  }
}

resource "intersight_fcpool_pool" "brattice_wwpn_a" {
  name = "brattice_wwpn_a"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  pool_purpose = "WWPN"
  id_blocks {
    from = "20:00:00:25:b7:fa:00:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [id_blocks]
  }
}

resource "intersight_fcpool_pool" "brattice_wwpn_b" {
  name = "brattice_wwpn_b"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  pool_purpose = "WWPN"
  id_blocks {
    from = "20:00:00:25:b7:fb:00:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [id_blocks]
  }
}