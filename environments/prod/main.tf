provider "google" { 
  project = "${var.project}" 
}

module "project" {
  source = "../../modules/project"
  name = "${var.project}"
  editors = "${var.project_editors}"
  billing_account = "${var.billing_account}"
}