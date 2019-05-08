provider "google" { 
  project = "${var.project}" 
}

module "project" {
  source = "../../modules/project"
  name = "${var.project}"
  folder_id = "${var.folder_id}"
  billing_account = "${var.billing_account}"
  editors = "${var.project_editors}"  
}

module "firewall" {
  source = "../../modules/firewall"
  project = "${var.project}"  
}