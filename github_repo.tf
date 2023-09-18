terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "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"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

}