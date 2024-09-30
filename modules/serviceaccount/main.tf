resource "google_service_account" "default" {
  project      = var.project
  account_id   = var.service_account_id
  display_name = var.display_name
}


# Organization policy to disable service account key creation
resource "google_organization_policy" "disable_sa_key_creation" {
  org_id = 978808355790 # Use your project ID for project-level policy

  constraint = "iam.disableServiceAccountKeyCreation"

  boolean_policy {
    enforced = false
  }
}