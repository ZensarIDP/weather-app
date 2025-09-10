// IAM roles and permissions for Google App Engine

resource "google_project_iam_member" "app_engine_service_account" {
  project = var.project_id
  role    = "roles/appengine.appAdmin"
  member  = "serviceAccount:${var.service_account_email}"
}

resource "google_project_iam_member" "app_engine_viewer" {
  project = var.project_id
  role    = "roles/viewer"
  member  = "serviceAccount:${var.service_account_email}"
}