variable "github" {
  description = "vars for github"
  sensitive   = true
  type = object({
    token        = string
    organization = string
  })
  default = {
    token        = "my-token-github"
    organization = "organization-name"
  }
}

variable "teams" {
  description = "This teams to create"
  type = list(object({
    name        = string
    description = string
    privacy     = string
  }))
  default = [
    {
      name        = "developers"
      description = "Developers user"
      privacy     = "closed"
    },
    {
      name        = "backend"
      description = "backends user"
      privacy     = "closed"
    },
  ]
}

variable "members" {
  description = "This members to create"
  type = list(object({
    username = string
    role     = string
    team     = string
  }))
  default = [
    {
      team     = "developers"
      username = "luismayta"
      role     = "maintainer"
    },
    {
      team     = "backend"
      username = "luismayta"
      role     = "maintainer"
    },
  ]
}

variable "permissions" {
  description = "This permissions to repository"
  type = list(object({
    team       = string
    repository = string
    permission = string
  }))
  default = [
    {
      team       = "backend"
      repository = "repository-name"
      permission = "admin"
    },
    {
      team       = "developers"
      repository = "repository-name"
      permission = "admin"
    },
  ]
}
