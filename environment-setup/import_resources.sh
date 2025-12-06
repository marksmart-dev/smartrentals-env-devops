#!/bin/bash
set -e

# Import Cloud Identity Groups
# Using the group IDs found via gcloud
echo "Importing Cloud Identity Groups..."

terraform import module.cs-gg-operations-nonprod-service.google_cloud_identity_group.group "groups/03oy7u294f1k018"
terraform import module.cs-gg-operations-prod-service.google_cloud_identity_group.group "groups/01664s552iw9e3o"
terraform import module.cs-gg-sales-nonprod-service.google_cloud_identity_group.group "groups/01jlao462i6yrcy"
terraform import module.cs-gg-sales-prod-service.google_cloud_identity_group.group "groups/043ky6rz3rux1qu"

# Import Monitored Projects (fixing the 409 error)
# Format: locations/global/metricsScopes/{METRICS_SCOPE_PROJECT_ID}/projects/{MONITORED_PROJECT_ID}
# METRICS_SCOPE_PROJECT_ID is central-log-monitor-gt738-xd25
echo "Importing Monitored Projects..."

METRICS_SCOPE="central-log-monitor-gt738-xd25"

terraform import 'google_monitoring_monitored_project.cs-monitored-projects["vpc-host-nonprod-ng786-al606"]' \
  "locations/global/metricsScopes/$METRICS_SCOPE/projects/vpc-host-nonprod-ng786-al606"

terraform import 'google_monitoring_monitored_project.cs-monitored-projects["vpc-host-prod-ds581-hy386"]' \
  "locations/global/metricsScopes/$METRICS_SCOPE/projects/vpc-host-prod-ds581-hy386"

echo "Imports completed."
