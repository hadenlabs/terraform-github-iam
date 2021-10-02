module "main" {
  source = "git://github.com/hadenlabs/terraform-github-iam.git?ref=0.1.1"
  providers = {
    github = github
  }

  team        = var.team
  maintainers = var.maintainers
  members     = var.members
}
