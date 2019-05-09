locals {
  "env" = "prod"
}

provider "google" { 
  project = "${var.project}" 
}

module "apache2" {
  source = "../../modules/apache2"
  project = "${var.project}"  
  env = "${local.env}"
}

module "firewall" {
  source = "../../modules/firewall"
  project = "${var.project}"  
  env = "${local.env}"
}