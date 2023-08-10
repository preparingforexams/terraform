terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

resource "github_repository" "main" {
  name        = var.name
  description = var.description
  visibility  = var.is_public ? "public" : "private"
  is_template = false
  archived = var.is_archived

  has_issues      = true
  has_discussions = false
  has_projects    = false
  has_wiki        = false
  has_downloads   = false

  allow_auto_merge       = true
  delete_branch_on_merge = true

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
}

resource "github_branch_default" "main" {
  repository = github_repository.main.name
  branch     = "main"
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.main.id
  pattern       = "main"

  required_linear_history = true

  required_status_checks {
    contexts = var.required_status_checks
  }
}

resource "github_actions_repository_permissions" "main" {
  allowed_actions = "all"
  repository      = github_repository.main.name
}
