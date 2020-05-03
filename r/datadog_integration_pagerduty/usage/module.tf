module "datadog_integration_pagerduty" {
  source = "./modules/datadog/r/datadog_integration_pagerduty"

  api_token           = null
  individual_services = null
  schedules           = []
  subdomain           = null

  services = [{
    service_key  = null
    service_name = null
  }]
}
