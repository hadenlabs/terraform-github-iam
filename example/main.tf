module "main" {
  providers = {
    github = github
  }
  source      = "git://github.com/hadenlabs/terraform-github-iam.git?ref=0.1.0"
  teams       = var.teams
  members     = var.members
  permissions = var.permissions
}
