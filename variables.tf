variable "teams" {
  description = "This teams to create"
  type = list(object({
    name        = string
    description = string
    privacy     = string
  }))
  default = null
}

variable "members" {
  description = "This members to create"
  type = list(object({
    username = string
    role     = string
    team     = string
  }))
  default = null
}

variable "permissions" {
  description = "This permissions to repository"
  type = list(object({
    team       = string
    repository = string
    permission = string
  }))
  default = null
}
