terraform {
  required_version = ">= 0.11.13"
}

resource "google_project" "project" {   
  name = "${var.project}"
  project_id = "${var.project}"
  billing_account = "${var.billing_account}"
}

data "google_iam_policy" "editors" {
  binding = {
    role = "roles/editor"
    members = "${var.project_editors}"
  }
}

resource "google_project_iam_policy" "project_iam" {
  project = "${google_project.project.project_id}"
  policy_data = "${data.google_iam_policy.editors.policy_data}"
}