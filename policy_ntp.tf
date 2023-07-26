resource "intersight_ntp_policy" "brattice" {
  name = "brattice"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  enabled = true
  ntp_servers = [
    "10.0.0.252",
    "10.0.0.253",
  ]
  timezone = "Etc/GMT"
}
