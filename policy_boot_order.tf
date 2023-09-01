resource "intersight_boot_precision_policy" "m2_boot" {
  name = "UEFI_m2_RAID"
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

  configured_boot_mode     = "Uefi"
  enforce_uefi_secure_boot = false

  boot_devices {
    enabled     = true
    name        = "m2raid"
    object_type = "boot.LocalDisk"
    additional_properties = jsonencode({
      Slot = "MSTOR-RAID"
      Bootloader = {
        Name       = "BOOTX64.EFI"
        Path       = "\\EFI\\BOOT"
        ObjectType = "boot.Bootloader"
      }
    })
  }

  boot_devices {
    enabled     = true
    name        = "KVMDVD"
    object_type = "boot.VirtualMedia"
    additional_properties = jsonencode({
      Subtype = "kvm-mapped-dvd"
    })
  }

  boot_devices {
    enabled     = true
    name        = "CIMCDVD"
    object_type = "boot.VirtualMedia"
    additional_properties = jsonencode({
      Subtype = "cimc-mapped-dvd"
    })
  }
}

resource "intersight_boot_precision_policy" "san_boot" {
  name = "san_boot"
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

  configured_boot_mode     = "Uefi"
  enforce_uefi_secure_boot = false

  boot_devices {
    enabled     = true
    name        = "pure-a"
    object_type = "boot.San"
    additional_properties = jsonencode({
      InterfaceName = "vhba-a"
      Slot          = "MLOM"
      lun           = 1
      wwpn          = "52:4A:93:71:20:FF:59:00"
      Bootloader = {
        Name       = "BOOTX64.EFI"
        Path       = "\\EFI\\BOOT"
        ObjectType = "boot.Bootloader"
      }
    })
  }
  boot_devices {
    enabled     = true
    name        = "pure-b"
    object_type = "boot.San"
    additional_properties = jsonencode({
      InterfaceName = "vhba-b"
      Slot          = "MLOM"
      lun           = 1
      wwpn          = "52:4A:93:71:20:FF:59:10"
      Bootloader = {
        Name       = "BOOTX64.EFI"
        Path       = "\\EFI\\BOOT"
        ObjectType = "boot.Bootloader"
      }
    })
  }
  boot_devices {
    enabled     = true
    name        = "KVMDVD"
    object_type = "boot.VirtualMedia"
    additional_properties = jsonencode({
      Subtype = "kvm-mapped-dvd"
    })
  }
}
