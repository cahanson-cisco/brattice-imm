resource "intersight_boot_precision_policy" "m2_boot" {
  name = "UEFI_m2_RAID"
  tags = [local.terraform]
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