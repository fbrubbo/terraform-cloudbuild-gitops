provider "google" { 
  project = "${var.project}" 
}

module "master-vpc" {
  source = "../modules/vpc"
  project = "${var.project}"
  env = "master"
}

module "prod-vpc" {
  source = "../modules/vpc"
  project = "${var.project}"
  env = "prod"
}