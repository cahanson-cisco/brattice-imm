resource "intersight_macpool_pool" "brattice_mac_a" {
  name = "brattice_mac_a"
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

  mac_blocks {
    from = "00:25:b5:b7:ff:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [mac_blocks]
  }
}
resource "intersight_macpool_pool" "geppetto_mac_a" {
  name = "geppetto_mac_a"
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

  mac_blocks {
    from = "00:25:b5:61:fa:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [mac_blocks]
  }
}

resource "intersight_macpool_pool" "geppetto_mac_b" {
  name = "geppetto_mac_b"
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

  mac_blocks {
    from = "00:25:b5:61:fb:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [mac_blocks]
  }
}

resource "intersight_macpool_pool" "geppetto_mac_failover" {
  name = "geppetto_mac_failover"
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

  mac_blocks {
    from = "00:25:b5:61:ff:01"
    size = 255
  }
  lifecycle {
    ignore_changes = [mac_blocks]
  }
}
