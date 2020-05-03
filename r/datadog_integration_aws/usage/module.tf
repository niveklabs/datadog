module "datadog_integration_aws" {
  source = "./modules/datadog/r/datadog_integration_aws"

  account_id                       = null
  account_specific_namespace_rules = {}
  filter_tags                      = []
  host_tags                        = []
  role_name                        = null
}
