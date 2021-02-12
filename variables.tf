variable "teams" {
  description = "This teams to create"
  type = object({
    name        = string
    descripcion = string
    privacy     = string
  })
  default = null
}

variable "members" {
  description = "This members to create"
  type = object({
    username = string
    role     = string
    team     = string
  })
  default = null
}

variable "permissions" {
  description = "This permissions to repository"
  type = object({
    team       = string
    repository = string
    permission = string
  })
  default = null
}
