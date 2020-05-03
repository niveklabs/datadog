module "datadog_integration_gcp" {
  source = "./modules/datadog/r/datadog_integration_gcp"

  client_email   = null
  client_id      = null
  host_filters   = null
  private_key    = null
  private_key_id = null
  project_id     = null
}
