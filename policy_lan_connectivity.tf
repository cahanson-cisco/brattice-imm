resource "intersight_vnic_lan_connectivity_policy" "brattice-esxi" {
  name = "brattice-esxi"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "aci-a" {
  name = "aci-a"
  tags = [local.terraform]

  order            = 2
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.brattice_mac_a.moid
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
    moid = intersight_vnic_lan_connectivity_policy.brattice-esxi.moid
  }
}

resource "intersight_vnic_eth_if" "aci-b" {
  name = "aci-b"
  tags = [local.terraform]

  order            = 3
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.brattice_mac_b.moid
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
    moid = intersight_vnic_lan_connectivity_policy.brattice-esxi.moid
  }
}

resource "intersight_vnic_eth_if" "vmm-a" {
  name = "vmm-a"
  tags = [local.terraform]

  order            = 4
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.brattice_mac_a.moid
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
    moid = intersight_vnic_lan_connectivity_policy.brattice-esxi.moid
  }
}

resource "intersight_vnic_eth_if" "vmm-b" {
  name = "vmm-b"
  tags = [local.terraform]

  order            = 5
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.brattice_mac_b.moid
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
    moid = intersight_vnic_lan_connectivity_policy.brattice-esxi.moid
  }
}

resource "intersight_vnic_lan_connectivity_policy" "brattice-linux" {
  name = "brattice-linux"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "eth0" {
  name = "eth0"
  tags = [local.terraform]

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
