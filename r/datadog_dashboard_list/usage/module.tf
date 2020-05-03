module "datadog_dashboard_list" {
  source = "./modules/datadog/r/datadog_dashboard_list"

  name = null

  dash_item = [{
    dash_id = null
    type    = null
  }]
}
