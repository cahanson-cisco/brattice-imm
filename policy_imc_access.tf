resource "intersight_access_policy" "inband_imc" {
  name = "inband_imc"
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

  configuration_type {
    configure_inband      = true
    configure_out_of_band = false
  }

  inband_vlan = var.network_map_nxos["brattice_inband_kvm"].vlan

  inband_ip_pool {
    moid = intersight_ippool_pool.ip_pools["brattice_inband_kvm"].id
  }
}
