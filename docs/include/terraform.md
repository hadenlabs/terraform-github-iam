<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >=4.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >=4.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_team.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_membership.maintainers](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.members](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_maintainers"></a> [maintainers](#input\_maintainers) | This members role maintainers | `list(string)` | `null` | no |
| <a name="input_members"></a> [members](#input\_members) | This members role member | `list(string)` | `null` | no |
| <a name="input_team"></a> [team](#input\_team) | This team to create | <pre>object({<br>    name        = string<br>    description = string<br>    privacy     = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_maintainers"></a> [maintainers](#output\_maintainers) | instance of maintainers of team github |
| <a name="output_members"></a> [members](#output\_members) | instance of members of team github |
| <a name="output_team"></a> [team](#output\_team) | instance of team |
| <a name="output_team_members"></a> [team\_members](#output\_team\_members) | instance of members for team github |
<!-- END_TF_DOCS -->