resource "intersight_bios_policy" "vmware-esxi" {
  name = "vmware-esxi"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  cpu_perf_enhancement        = "Auto"
  processor_c1e               = "enabled"
  processor_c6report          = "enabled"
  energy_efficient_turbo      = "enabled"
  cisco_adaptive_mem_training = "enabled"
  lom_ports_all_state         = "disabled"
}

resource "intersight_bios_policy" "linux" {
  name = "linux"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  intel_vt_for_directed_io = "disabled"
  cpu_perf_enhancement     = "Auto"
  processor_c1e            = "enabled"
  processor_c6report       = "enabled"
  energy_efficient_turbo   = "enabled"
  work_load_config         = "Balanced"
}