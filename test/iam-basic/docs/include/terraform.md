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

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github"></a> [github](#input\_github) | vars for github | <pre>object({<br>    token        = string<br>    organization = string<br>  })</pre> | n/a | yes |
| <a name="input_members"></a> [members](#input\_members) | This members to create | `list(any)` | `null` | no |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | This permissions to repository | `list(any)` | `null` | no |
| <a name="input_teams"></a> [teams](#input\_teams) | This teams to create | `list(any)` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->