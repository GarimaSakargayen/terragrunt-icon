terraform {
  source = "github.com/insight-icon/terraform-icon-aws-network.git?ref=${local.vars.versions.prep.aws.network}"
}

include {
  path = find_in_parent_folders()
}

locals {
  vars = read_terragrunt_config(find_in_parent_folders("variables.hcl")).locals
}

inputs = {}