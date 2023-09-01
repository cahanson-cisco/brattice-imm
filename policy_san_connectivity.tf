resource "intersight_vnic_san_connectivity_policy" "brattice-fc" {
  name = "brattice-fc"
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

  placement_mode    = "custom"
  target_platform   = "FIAttached"
  wwnn_address_type = "POOL"

  wwnn_pool {
    moid = intersight_fcpool_pool.brattice_wwnn.moid
  }

}

resource "intersight_vnic_fc_if" "vhba-a" {
  name = "vhba-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  type              = "fc-initiator"
  order             = 0
  wwpn_address_type = "POOL"

  wwpn_pool {
    moid = intersight_fcpool_pool.brattice_wwpn_a.moid
  }

  placement {
    switch_id = "A"
    id        = "MLOM"
  }

  persistent_bindings = false

  fc_network_policy {
    moid = intersight_vnic_fc_network_policy.vsan101.moid
  }

  fc_qos_policy {
    moid = intersight_vnic_fc_qos_policy.default.moid
  }

  fc_adapter_policy {
    moid = intersight_vnic_fc_adapter_policy.default.moid
  }

  san_connectivity_policy {
    moid = intersight_vnic_san_connectivity_policy.brattice-fc.moid
  }

  fc_zone_policies {
    moid = intersight_fabric_fc_zone_policy.brattice-A.moid
  }
}

resource "intersight_vnic_fc_if" "vhba-b" {
  name = "vhba-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  type              = "fc-initiator"
  order             = 1
  wwpn_address_type = "POOL"

  wwpn_pool {
    moid = intersight_fcpool_pool.brattice_wwpn_b.moid
  }

  placement {
    switch_id = "B"
    id        = "MLOM"
  }

  persistent_bindings = false

  fc_network_policy {
    moid = intersight_vnic_fc_network_policy.vsan102.moid
  }

  fc_qos_policy {
    moid = intersight_vnic_fc_qos_policy.default.moid
  }

  fc_adapter_policy {
    moid = intersight_vnic_fc_adapter_policy.default.moid
  }

  fc_zone_policies {
    moid = intersight_fabric_fc_zone_policy.brattice-B.moid
  }

  san_connectivity_policy {
    moid = intersight_vnic_san_connectivity_policy.brattice-fc.moid
  }
}
