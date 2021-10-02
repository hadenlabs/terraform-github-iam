module "main" {
  source = "git://github.com/hadenlabs/terraform-github-iam.git?ref=0.1.1"
  providers = {
    github = github
  }

  teams       = var.teams
  members     = var.members
  permissions = var.permissions
}
