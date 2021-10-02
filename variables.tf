variable "team" {
  description = "This team to create"
  type = object({
    name        = string
    description = string
    privacy     = string
  })
}

variable "maintainers" {
  description = "This members role maintainers"
  type        = list(string)
  default     = null
}

variable "members" {
  description = "This members role member"
  type        = list(string)
  default     = null
}
