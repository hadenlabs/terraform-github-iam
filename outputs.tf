output "team" {
  description = "instance of team"
  value       = github_team.this
}

output "members" {
  description = "instance of members of team github"
  value       = github_team_membership.members
}

output "maintainers" {
  description = "instance of maintainers of team github"
  value       = github_team_membership.maintainers
}

output "team_members" {
  description = "instance of members for team github"
  value       = github_team_membership.members
}

# output "permissions" {
#   description = "permissions of team repository"
#   value       = github_team_repository.this
# }