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
    token = var.github_token
    owner = "klssmith"
}

variable "github_token" {
    type        = string
    description = "A GitHub token with repo scope"
    validation {
        condition     = length(var.github_token) == 40
        error_message = "I think you got the GitHub token wrong..."
    }
}
