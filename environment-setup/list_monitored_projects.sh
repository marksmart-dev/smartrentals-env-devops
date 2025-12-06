#!/bin/bash
set -e

# List Monitored Projects using curl
# Endpoint: GET https://logging.googleapis.com/v1/{parent}/projects

METRICS_SCOPE="central-log-monitor-gt738-xd25"
ACCESS_TOKEN=$(gcloud auth print-access-token)

echo "Listing monitored projects for scope: $METRICS_SCOPE"
curl -X GET \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  "https://logging.googleapis.com/v1/locations/global/metricsScopes/$METRICS_SCOPE/projects"

echo ""
echo "List completed."
