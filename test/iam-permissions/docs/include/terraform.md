<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >=4.5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_main"></a> [main](#module\_main) | ../.. | n/a |
| <a name="module_repository"></a> [repository](#module\_repository) | hadenlabs/repository/github | >=0.11 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github"></a> [github](#input\_github) | vars for github | <pre>object({<br>    token        = string<br>    organization = string<br>  })</pre> | n/a | yes |
| <a name="input_maintainers"></a> [maintainers](#input\_maintainers) | This maintainers to create | `list(string)` | `null` | no |
| <a name="input_members"></a> [members](#input\_members) | This members to create | `list(string)` | `null` | no |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | Add permissions of repository for team | <pre>list(object({<br>    repository = string<br>    permission = string<br>  }))</pre> | `null` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | name of repository | `string` | n/a | yes |
| <a name="input_team"></a> [team](#input\_team) | This team to create | <pre>object({<br>    name        = string<br>    description = string<br>    privacy     = string<br>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->