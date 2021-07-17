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
| [github_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_team.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |
| [github_team_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_teams"></a> [teams](#input\_teams) | This teams to create | <pre>list(object({<br>    name        = string<br>    description = string<br>    privacy     = string<br>  }))</pre> | `null` | no |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | This permissions to repository | <pre>list(object({<br>    team       = string<br>    repository = string<br>    permission = string<br>  }))</pre> | `null` | no |
| <a name="input_members"></a> [members](#input\_members) | This members to create | <pre>list(object({<br>    username = string<br>    role     = string<br>    team     = string<br>  }))</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_members"></a> [members](#output\_members) | instance of members github |
| <a name="output_permissions"></a> [permissions](#output\_permissions) | permissions of team repository |
| <a name="output_team_members"></a> [team\_members](#output\_team\_members) | instance of members for team github |
| <a name="output_teams"></a> [teams](#output\_teams) | instance of teams |
<!-- END_TF_DOCS -->