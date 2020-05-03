module "datadog_synthetics_test" {
  source = "./modules/datadog/r/datadog_synthetics_test"

  assertions      = [{}]
  device_ids      = []
  locations       = []
  message         = null
  name            = null
  options         = {}
  request         = {}
  request_headers = {}
  status          = null
  subtype         = null
  tags            = []
  type            = null
}
