variable "name" {
  type     = string
  nullable = false
}

variable "description" {
  type        = string
  default     = ""
  description = "The repository description"
  nullable    = false
}

variable "default_branch_name" {
  type        = string
  default     = "main"
  description = "The name of the default branch. Highly recommended to use the default here."
}

variable "is_public" {
  type    = bool
  default = true
}

variable "is_archived" {
  type    = bool
  default = false
}

variable "allowed_actions" {
  type        = string
  default     = "all"
  description = "The allowed actions for GitHub Actions"
}

variable "required_status_checks" {
  type = list(string)
  default = [
    "lint",
    "test",
    "build-container-image",
  ]
  description = "The list of status checks that need to pass for PRs"
}
