module "datadog_logs_index" {
  source = "./modules/datadog/r/datadog_logs_index"

  name = null

  exclusion_filter = [{
    filter = [{
      query       = null
      sample_rate = null
    }]
    is_enabled = null
    name       = null
  }]

  filter = [{
    query = null
  }]
}
