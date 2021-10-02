module "main" {
  source = "../.."
  providers = {
    github = github
  }

  teams       = var.teams
  members     = var.members
  permissions = var.permissions
}
