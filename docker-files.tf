resource "github_repository_file" "dockerfile" {
  repository          = module.repository.repository_name
  branch              = module.repository.default_branch_name
  file                = "Dockerfile"
  content             = data.http.dockerfile_template.response_body
  commit_message      = "feat: adding Dockerfile"
  commit_author       = var.commit_author
  commit_email        = var.commit_email
  overwrite_on_create = true
}

resource "github_repository_file" "dockerignore" {
  repository          = module.repository.repository_name
  branch              = module.repository.default_branch_name
  file                = ".dockerignore"
  content             = data.http.dockerignore_template.response_body
  commit_message      = "feat: adding dockerignore"
  commit_author       = var.commit_author
  commit_email        = var.commit_email
  overwrite_on_create = true
}

data "http" "dockerfile_template" {
  url = "https://raw.githubusercontent.com/codingones-github-templates/files-templates/main/dockerfile/Dockerfile_amazonlinux_node"
}

data "http" "dockerignore_template" {
  url = "https://raw.githubusercontent.com/codingones-github-templates/files-templates/main/dockerfile/.dockerignore_api_node"
}

