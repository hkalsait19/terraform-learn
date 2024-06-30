terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~>6.0"
    }
  }
}

provider "github" {
  token = "github_XXXXXXXxxxxxxxXXXXXXxxxxxxXXXXXxxxxxXXXXxxxxxxXXXXXX"
}

/*
resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
}
*/
// destoy repo using comment '/*.....*/' flag: terraform apply
