terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~>6.0"
    }
  }
}

provider "github" {
  token = "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"
}

/*
resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
}
*/
// destoy repo using comment '/*.....*/' flag: terraform apply