#!/bin/bash
set -e

# Manually delete Monitored Projects using curl to resolve Terraform 409 conflict
# Endpoint: DELETE https://logging.googleapis.com/v1/{name}

METRICS_SCOPE="central-log-monitor-gt738-xd25"
PROJECT_NONPROD="vpc-host-nonprod-ng786-al606"
PROJECT_PROD="vpc-host-prod-ds581-hy386"

ACCESS_TOKEN=$(gcloud auth print-access-token)

echo "Deleting monitored project: $PROJECT_NONPROD"
curl -X DELETE \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  "https://logging.googleapis.com/v1/locations/global/metricsScopes/$METRICS_SCOPE/projects/$PROJECT_NONPROD"

echo "Deleting monitored project: $PROJECT_PROD"
curl -X DELETE \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  "https://logging.googleapis.com/v1/locations/global/metricsScopes/$METRICS_SCOPE/projects/$PROJECT_PROD"

echo "Deletion requests sent."
