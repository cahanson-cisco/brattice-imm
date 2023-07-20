resource "intersight_server_profile_template" "brattice-esxi" {
  name = "brattice-esxi"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  target_platform = "FIAttached"

  policy_bucket {
    moid        = intersight_bios_policy.vmware-esxi.moid
    object_type = intersight_bios_policy.vmware-esxi.object_type
  }

  policy_bucket {
    moid        = intersight_boot_precision_policy.m2_boot.moid
    object_type = intersight_boot_precision_policy.m2_boot.object_type
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
    moid        = intersight_storage_storage_policy.m2_raid1.moid
    object_type = intersight_storage_storage_policy.m2_raid1.object_type
  }

  policy_bucket {
    moid        = intersight_vnic_lan_connectivity_policy.brattice-esxi.moid
    object_type = intersight_vnic_lan_connectivity_policy.brattice-esxi.object_type
  }

  policy_bucket {
    moid        = intersight_vnic_san_connectivity_policy.brattice-fc.moid
    object_type = intersight_vnic_san_connectivity_policy.brattice-fc.object_type
  }
}

resource "intersight_server_profile_template" "pilgrim" {
  name = "pilgrim"
  tags = [local.terraform]
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
    moid        = intersight_boot_precision_policy.m2_boot.moid
    object_type = intersight_boot_precision_policy.m2_boot.object_type
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
    moid        = intersight_storage_storage_policy.m2_raid1.moid
    object_type = intersight_storage_storage_policy.m2_raid1.object_type
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