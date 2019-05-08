terraform {
  required_version = ">= 0.11.13"
}

resource "google_project" "project" {   
  name = "${var.name}"
  project_id = "${var.name}"
  folder_id  = "${var.folder_id}"  
  billing_account = "${var.billing_account}"
}

data "google_iam_policy" "editors" {
  binding = {
    role = "roles/editor"
    members = "${var.editors}"
  }
}

resource "google_project_iam_policy" "project_iam" {
  project = "${google_project.project.project_id}"
  policy_data = "${data.google_iam_policy.editors.policy_data}"
}

resource "google_project_services" "services" {
  project = "${var.project}"
  services = [
    "cloudbuild.googleapis.com", 
    "containerregistry.googleapis.com",
    "pubsub.googleapis.com",
    "logging.googleapis.com",
    "storage-api.googleapis.com",
    "serviceusage.googleapis.com",
    "sourcerepo.googleapis.com",
    "compute.googleapis.com"
  ]
}