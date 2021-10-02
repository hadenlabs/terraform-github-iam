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
| <a name="module_main"></a> [main](#module\_main) | git://github.com/hadenlabs/terraform-github-iam.git | 0.1.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github"></a> [github](#input\_github) | vars for github | <pre>object({<br>    token        = string<br>    organization = string<br>  })</pre> | n/a | yes |
| <a name="input_members"></a> [members](#input\_members) | This members to create | <pre>list(object({<br>    username = string<br>    role     = string<br>    team     = string<br>  }))</pre> | <pre>[<br>  {<br>    "role": "maintainer",<br>    "team": "developers",<br>    "username": "luismayta"<br>  },<br>  {<br>    "role": "maintainer",<br>    "team": "backend",<br>    "username": "luismayta"<br>  }<br>]</pre> | no |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | This permissions to repository | <pre>list(object({<br>    team       = string<br>    repository = string<br>    permission = string<br>  }))</pre> | <pre>[<br>  {<br>    "permission": "admin",<br>    "repository": "repository-name",<br>    "team": "backend"<br>  },<br>  {<br>    "permission": "admin",<br>    "repository": "repository-name",<br>    "team": "developers"<br>  }<br>]</pre> | no |
| <a name="input_teams"></a> [teams](#input\_teams) | This teams to create | <pre>list(object({<br>    name        = string<br>    description = string<br>    privacy     = string<br>  }))</pre> | <pre>[<br>  {<br>    "description": "Developers user",<br>    "name": "developers",<br>    "privacy": "closed"<br>  },<br>  {<br>    "description": "backends user",<br>    "name": "backend",<br>    "privacy": "closed"<br>  }<br>]</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->