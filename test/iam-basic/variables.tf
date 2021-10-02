variable "teams" {
  description = "This teams to create"
  type        = list(any)
  default     = null
}

variable "members" {
  description = "This members to create"
  type        = list(any)
  default     = null
}

variable "permissions" {
  description = "This permissions to repository"
  type        = list(any)
  default     = null
}

variable "github" {
  description = "vars for github"
  type = object({
    token        = string
    organization = string
  })
}
