resource "intersight_vnic_lan_connectivity_policy" "geppetto-esxi" {
  name = "geppetto-esxi"
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

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "mgmt-failover" {
  name = "mgmt-failover"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 2
  mac_address_type = "POOL"
  failover_enabled = "true"


  mac_pool {
    moid = intersight_macpool_pool.geppetto_mac_failover.moid
  }

  placement {
    switch_id = "A"
    id        = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.vlan-1500-native.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.cdp_enable.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["be"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.default.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.geppetto-esxi.moid
  }
}

resource "intersight_vnic_eth_if" "vmm-a" {
  name = "vmm-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 3
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.geppetto_mac_a.moid
  }

  placement {
    switch_id = "A"
    id        = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.aci.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.cdp_enable.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["be"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.default.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.geppetto-esxi.moid
  }
}

resource "intersight_vnic_eth_if" "vmm-b" {
  name = "vmm-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 4
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.geppetto_mac_b.moid
  }

  placement {
    switch_id = "B"
    id        = "MLOM"

  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.aci.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.cdp_enable.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["be"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.default.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.geppetto-esxi.moid
  }
}

resource "intersight_vnic_lan_connectivity_policy" "geppetto-linux" {
  name = "geppetto-linux"
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

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "eth0" {
  name = "eth0"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 2
  mac_address_type = "POOL"
  failover_enabled = "true"

  mac_pool {
    moid = intersight_macpool_pool.geppetto_mac_failover.moid
  }

  placement {
    switch_id = "A"
    id        = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.vlan-840-native.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.cdp_enable.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["be"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.default.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.geppetto-linux.moid
  }
}


resource "intersight_vnic_lan_connectivity_policy" "brattice-linux" {
  name = "brattice-linux"
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

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "brattice-eth0" {
  name = "eth0"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 2
  mac_address_type = "POOL"
  failover_enabled = "true"

  mac_pool {
    moid = intersight_macpool_pool.brattice_mac_failover.moid
  }

  placement {
    switch_id = "A"
    id        = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.vlan-840-native.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.cdp_enable.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["be"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.default.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.brattice-linux.moid
  }
}
