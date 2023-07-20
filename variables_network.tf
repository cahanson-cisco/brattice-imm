variable "network_map_nxos" {
  type = map(object({
    vlan = number
    qos  = string
  }))
  default = {
    brattice_inband_kvm = {
      vlan = 850
      qos  = "best effort"
    }
    brattice_nxos_840 = {
      vlan = 840
      qos  = "best effort"
    }
    brattice_nxos_841 = {
      vlan = 841
      qos  = "best effort"
    }
    brattice_nxos_842 = {
      vlan = 842
      qos  = "best effort"
    }
    brattice_nxos_843 = {
      vlan = 843
      qos  = "best effort"
    }
    brattice_nxos_844 = {
      vlan = 844
      qos  = "best effort"
    }
    brattice_nxos_845 = {
      vlan = 845
      qos  = "best effort"
    }
    brattice_nxos_846 = {
      vlan = 846
      qos  = "best effort"
    }
    brattice_nxos_847 = {
      vlan = 847
      qos  = "best effort"
    }
    brattice_nxos_848 = {
      vlan = 848
      qos  = "best effort"
    }
    brattice_nxos_849 = {
      vlan = 849
      qos  = "best effort"
    }
    brattice_nxos_850 = {
      vlan = 850
      qos  = "best effort"
    }
  }
}

variable "network_map_aci" {
  type = map(object({
    vlan = number
    qos  = string
  }))

  default = {
    aci_1599 = {
      vlan = 1599
      qos  = "best effort"
    }
  }
}