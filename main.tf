resource "github_team" "this" {
  name        = var.team.name
  description = var.team.description
  privacy     = var.team.privacy
}

resource "github_team_membership" "maintainers" {
  count      = length(try(var.maintainers, 0))
  team_id    = github_team.this.id
  username   = element(var.maintainers, count.index)
  role       = "maintainer"
  depends_on = [github_team.this]
}

resource "github_team_membership" "members" {
  count      = length(try(var.members, 0))
  team_id    = github_team.this.id
  username   = element(var.members, count.index)
  role       = "member"
  depends_on = [github_team.this]
}

resource "github_team_repository" "this" {
  count      = length(try(var.permissions, 0))
  team_id    = github_team.this.id
  repository = element(var.permissions, count.index).repository
  permission = element(var.permissions, count.index).permission
}