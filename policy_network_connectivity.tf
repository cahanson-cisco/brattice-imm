resource "intersight_networkconfig_policy" "brattice" {
  name = "brattice"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  preferred_ipv4dns_server = "10.0.40.254"
  alternate_ipv4dns_server = ""
}
