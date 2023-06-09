module "repository" {
  source = "github.com/codingones-terraform-modules/github-repository"

  github_organization           = "codingones-github-templates"
  github_repository             = var.github_repository
  github_repository_topics      = var.github_repository_topics
  allow_push_to_default_branch  = true
  github_repository_description = "This repository host the files for a ready to deploy generic angular client"

  providers = {
    github = github
  }
}