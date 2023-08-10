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

variable "is_public" {
  type    = bool
  default = true
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
