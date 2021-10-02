### common

```hcl
  module "main" {
      source = "hadenlabs/iam/github"
      version = "0.2.1"

      providers = {
        github = github
      }

      team        = {
        "name" = "name-team"
        "description = "team description"
        "privacy" = "closed"
      }
      maintainers = ["user-github"]
      members     = ["user-github"]
  }

```

### implement members, teams and permissions

```hcl
  module "main" {
      source = "hadenlabs/iam/github"
      version = "0.2.1"

      providers = {
        github = github
      }

      team        = {
        "name" = "name-team"
        "description = "team description"
        "privacy" = "closed"
      }
      permissions = [
        {
          repository = "name repository",
          permission = "pull",
        },
      ]
      maintainers = ["user-github"]
      members     = ["user-github"]
  }

```
