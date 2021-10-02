# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# CREATE IAM FOR GITHUB
# This example will create a iam for github.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
module "repository" {
  source  = "hadenlabs/repository/github"
  version = ">=0.11"

  providers = {
    github = github
  }

  name        = var.repository_name
  description = "create repository using terraform"
  visibility  = "private"
}

module "main" {
  source = "../.."
  providers = {
    github = github
  }
  depends_on = [
    module.repository,
  ]

  team        = var.team
  maintainers = var.maintainers
  members     = var.members
  permissions = var.permissions
}
