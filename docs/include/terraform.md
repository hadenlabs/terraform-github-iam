## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| github | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| members | This members to create | <pre>object({<br>    username    = string<br>    role = string<br>    team = string<br>  })</pre> | `null` | no |
| permissions | This permissions to repository | <pre>object({<br>    team    = string<br>    repository = string<br>    permission = string<br>  })</pre> | `null` | no |
| teams | This teams to create | <pre>object({<br>    name        = string<br>    descripcion = string<br>    privacy = string<br>  })</pre> | `null` | no |

## Outputs

No output.
