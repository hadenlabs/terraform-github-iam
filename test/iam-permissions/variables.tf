variable "github" {
  description = "vars for github"
  type = object({
    token        = string
    organization = string
  })
}

variable "repository_name" {
  description = "name of repository"
  type        = string
}

variable "team" {
  description = "This team to create"
  type = object({
    name        = string
    description = string
    privacy     = string
  })
}

variable "maintainers" {
  description = "This maintainers to create"
  type        = list(string)
  default     = null
}

variable "members" {
  description = "This members to create"
  type        = list(string)
  default     = null
}

variable "permissions" {
  description = "Add permissions of repository for team"
  type = list(object({
    repository = string
    permission = string
  }))
  default = null
}