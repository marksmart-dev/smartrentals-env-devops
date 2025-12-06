#!/bin/bash
set -e

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
