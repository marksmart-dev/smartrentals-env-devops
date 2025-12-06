#!/bin/bash
set -e

# List Monitored Projects using curl (CORRECT ENDPOINT + PROJECT NUMBER)
# Endpoint: GET https://monitoring.googleapis.com/v1/{parent}/projects

METRICS_SCOPE_NUMBER="740031663810"
ACCESS_TOKEN=$(gcloud auth print-access-token)

echo "Listing monitored projects for scope (Number): $METRICS_SCOPE_NUMBER"
curl -X GET \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  "https://monitoring.googleapis.com/v1/locations/global/metricsScopes/$METRICS_SCOPE_NUMBER/projects"

echo ""
echo "List completed."
