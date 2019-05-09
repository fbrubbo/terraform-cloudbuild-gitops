terraform {
    backend "gcs" {
        bucket = "terraform-cloudbuild-gitops-tfstate"
        prefix = "setup"
    }
}