resource "intersight_firmware_policy" "latest" {
  name            = "latest"
  tags            = [local.terraform]
  target_platform = "FIAttached"
  organization {
    moid = local.organization
  }

  model_bundle_combo {
    model_family   = "UCSX-210C-M6"
    bundle_version = "5.1(0.230075)"
  }
  model_bundle_combo {
    model_family   = "UCSC-C220-M5"
    bundle_version = "4.2(3e)"
  }
}