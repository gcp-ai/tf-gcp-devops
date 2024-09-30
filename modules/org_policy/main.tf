# Organization policy to disable service account key creation
resource "google_organization_policy" "disable_file_download_wb" {
  org_id = 978808355790 # Use your project ID for project-level policy

  constraint = "ainotebooks.disableFileDownloads"

  boolean_policy {
    enforced = true
  }
}