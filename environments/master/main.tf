provider "google" { 
  project = "${var.project}" 
}

module "project" {
  source = "../../modules/project"
  name = "${var.project}"
  org_id = "${var.org_id}"
  billing_account = "${var.billing_account}"
  editors = "${var.project_editors}"  
}