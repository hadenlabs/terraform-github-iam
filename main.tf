resource "github_team" "this" {
  count       = length(var.teams)
  name        = element(var.teams, count.index).name
  description = element(var.teams, count.index).description
  privacy     = element(var.teams, count.index).privacy
}

resource "github_team_membership" "this" {
  count      = length(var.members)
  team_id    = element(github_team.this, index(github_team.this.*.name, element(var.members, count.index).team)).id
  username   = element(var.members, count.index).username
  role       = element(var.members, count.index).role
  depends_on = [github_team.this]
}

resource "github_team_repository" "this" {
  count      = length(var.permissions)
  team_id    = element(github_team.this, index(github_team.this.*.name, element(var.permissions, count.index).team)).id
  repository = element(var.permissions, count.index).repository
  permission = element(var.permissions, count.index).permission
  depends_on = [github_team.this, github_team_membership.this]
}
