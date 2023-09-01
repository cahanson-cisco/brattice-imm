locals {
  tags = {
    Project    = "BRATTICE-IMM"
    Automation = "Terraform"
    Repo       = "https://github.com/cahanson-cisco/brattice-imm"
  }
  organization = data.intersight_organization_organization.default.results[0].moid
}
