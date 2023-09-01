resource "intersight_server_profile_template" "geppetto-esxi" {
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

  target_platform = "FIAttached"

  policy_bucket {
    moid        = intersight_bios_policy.vmware-esxi.moid
    object_type = intersight_bios_policy.vmware-esxi.object_type
  }

  policy_bucket {
    moid        = intersight_boot_precision_policy.san_boot.moid
    object_type = intersight_boot_precision_policy.san_boot.object_type
  }

  policy_bucket {
    moid        = intersight_vmedia_policy.vmedia_enabled.moid
    object_type = intersight_vmedia_policy.vmedia_enabled.object_type
  }

  policy_bucket {
    moid        = intersight_access_policy.inband_imc.moid
    object_type = intersight_access_policy.inband_imc.object_type
  }

  policy_bucket {
    moid        = intersight_iam_end_point_user_policy.default.moid
    object_type = intersight_iam_end_point_user_policy.default.object_type
  }

  policy_bucket {
    moid        = intersight_kvm_policy.default.moid
    object_type = intersight_kvm_policy.default.object_type
  }

  policy_bucket {
    moid        = intersight_firmware_policy.latest.moid
    object_type = intersight_firmware_policy.latest.object_type
  }

  policy_bucket {
    moid        = intersight_vnic_lan_connectivity_policy.geppetto-esxi.moid
    object_type = intersight_vnic_lan_connectivity_policy.geppetto-esxi.object_type
  }

  policy_bucket {
    moid        = intersight_vnic_san_connectivity_policy.brattice-fc.moid
    object_type = intersight_vnic_san_connectivity_policy.brattice-fc.object_type
  }
}

resource "intersight_server_profile_template" "geppetto-linux" {
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

  target_platform = "FIAttached"

  policy_bucket {
    moid        = intersight_bios_policy.linux.moid
    object_type = intersight_bios_policy.linux.object_type
  }

  policy_bucket {
    moid        = intersight_boot_precision_policy.san_boot.moid
    object_type = intersight_boot_precision_policy.san_boot.object_type
  }

  policy_bucket {
    moid        = intersight_vmedia_policy.vmedia_enabled.moid
    object_type = intersight_vmedia_policy.vmedia_enabled.object_type
  }

  policy_bucket {
    moid        = intersight_access_policy.inband_imc.moid
    object_type = intersight_access_policy.inband_imc.object_type
  }

  policy_bucket {
    moid        = intersight_iam_end_point_user_policy.default.moid
    object_type = intersight_iam_end_point_user_policy.default.object_type
  }

  policy_bucket {
    moid        = intersight_kvm_policy.default.moid
    object_type = intersight_kvm_policy.default.object_type
  }

  policy_bucket {
    moid        = intersight_firmware_policy.latest.moid
    object_type = intersight_firmware_policy.latest.object_type
  }

  policy_bucket {
    moid        = intersight_vnic_lan_connectivity_policy.geppetto-linux.moid
    object_type = intersight_vnic_lan_connectivity_policy.geppetto-linux.object_type
  }

  policy_bucket {
    moid        = intersight_vnic_san_connectivity_policy.brattice-fc.moid
    object_type = intersight_vnic_san_connectivity_policy.brattice-fc.object_type
  }
}

resource "intersight_server_profile_template" "pilgrim" {
  name = "pilgrim"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  tags {
    key   = "Demo"
    value = "AI/ML"
  }
  organization {
    moid = local.organization
  }

  target_platform   = "FIAttached"
  uuid_address_type = "POOL"

  uuid_pool {
    moid = intersight_uuidpool_pool.default.moid
  }

  policy_bucket {
    moid        = intersight_bios_policy.linux.moid
    object_type = intersight_bios_policy.linux.object_type
  }

  policy_bucket {
    moid        = intersight_boot_precision_policy.san_boot.moid
    object_type = intersight_boot_precision_policy.san_boot.object_type
  }

  policy_bucket {
    moid        = intersight_vmedia_policy.vmedia_enabled.moid
    object_type = intersight_vmedia_policy.vmedia_enabled.object_type
  }

  policy_bucket {
    moid        = intersight_access_policy.inband_imc.moid
    object_type = intersight_access_policy.inband_imc.object_type
  }

  policy_bucket {
    moid        = intersight_iam_end_point_user_policy.default.moid
    object_type = intersight_iam_end_point_user_policy.default.object_type
  }

  policy_bucket {
    moid        = intersight_kvm_policy.default.moid
    object_type = intersight_kvm_policy.default.object_type
  }

  policy_bucket {
    moid        = intersight_firmware_policy.latest.moid
    object_type = intersight_firmware_policy.latest.object_type
  }

  policy_bucket {
    moid        = intersight_vnic_lan_connectivity_policy.brattice-linux.moid
    object_type = intersight_vnic_lan_connectivity_policy.brattice-linux.object_type
  }

  policy_bucket {
    moid        = intersight_vnic_san_connectivity_policy.brattice-fc.moid
    object_type = intersight_vnic_san_connectivity_policy.brattice-fc.object_type
  }
}
