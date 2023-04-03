# Terraform

Terraform-managed infrastructure for preparingforexams projects.

## Auth

- Export a fine-grained PAT for the organization as `GITHUB_TOKEN`
  - Read access to all repo metadata
  - Read-write access to GitHub Actions variables and secrets
- Log in using the `gcloud` CLI tool: `gcloud auth application-default login`
