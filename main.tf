terraform {
    required_version = ">= 0.13.5"
    required_providers {
        github = {
            source = "hashicorp/github"
            version = "~> 3.1.0"
        }
    }
}

provider "github" {
    owner = "klssmith"
}
