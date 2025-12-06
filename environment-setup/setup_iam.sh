#!/bin/bash
set -e

# Grant Service Account Token Creator role to user
echo "Adding roles/iam.serviceAccountTokenCreator..."
gcloud iam service-accounts add-iam-policy-binding "terraform-deployer@mh-oct-2025.iam.gserviceaccount.com" --member="user:mark@smartrentalstsv.com.au" --role="roles/iam.serviceAccountTokenCreator" > /dev/null

# Grant Organization level roles to the service account
ORG_ID="403564791417"
SA="serviceAccount:terraform-deployer@mh-oct-2025.iam.gserviceaccount.com"

roles=(
    "roles/billing.projectManager"
    "roles/billing.user"
    "roles/compute.xpnAdmin"
    "roles/config.agent"
    "roles/logging.configWriter"
    "roles/orgpolicy.policyAdmin"
    "roles/resourcemanager.folderIamAdmin"
    "roles/resourcemanager.folderCreator"
    "roles/resourcemanager.folderEditor"
    "roles/resourcemanager.projectIamAdmin"
    "roles/resourcemanager.projectCreator"
    "roles/resourcemanager.projectDeleter"
    "roles/serviceusage.serviceUsageConsumer"
    "roles/secretmanager.secretAccessor"
    "roles/iam.serviceAccountUser"
    "roles/storage.objectUser"
)

# Use absolute path for condition file just in case, though cwd is set
COND_FILE="$(pwd)/iam_condition.yaml"

for role in "${roles[@]}"; do
    echo "Adding role $role with condition from $COND_FILE..."
    gcloud organizations add-iam-policy-binding "$ORG_ID" \
        --member="$SA" \
        --role="$role" \
        --condition-from-file="$COND_FILE"
done

echo "Authenticating via impersonation..."
gcloud auth application-default login --impersonate-service-account "terraform-deployer@mh-oct-2025.iam.gserviceaccount.com"

echo "Running terraform plan..."
# Run plan non-interactively if possible, or just generate plan file
terraform plan -out=tfplan_retry

echo "Running terraform apply..."
terraform apply -auto-approve "tfplan_retry"
