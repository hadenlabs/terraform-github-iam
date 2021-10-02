module "main" {
  source = "../.."
  providers = {
    github = github
  }

  team        = var.team
  maintainers = var.maintainers
  members     = var.members
}
