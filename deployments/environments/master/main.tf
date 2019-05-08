provider "google" { 
  project = "${var.project}" 
}

module "project" {
  source = "../../modules/project"
  project = "${var.project}"
  project_editors = "${var.project_editors}"
}