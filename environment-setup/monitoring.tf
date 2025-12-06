/*
resource "google_monitoring_monitored_project" "cs-monitored-projects" {
  for_each = toset([
    module.cs-project-vpc-host-prod.project_id,
    module.cs-project-vpc-host-nonprod.project_id,
    # module.cs-svc-sales-prod-svc-yr0e.project_id,
    # module.cs-svc-sales-nonprod-svc-yr0e.project_id,
    # module.cs-svc-operations-prod-svc-yr0e.project_id,
    # module.cs-svc-operations-nonprod-svc-yr0e.project_id,
  ])
  metrics_scope = "locations/global/metricsScopes/${module.cs-project-logging-monitoring.project_id}"
  name          = each.value
}
*/

