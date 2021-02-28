### common

```hcl

  module "main" {
      source = "hadenlabs/iam/github"
      version = "0.1.1"

      providers = {
        github = github
      }
  }

```

### implement members, teams and permissions

```hcl

  locals {
    teams = [
      {
        name        = "developers"
        description = "Developers user"
        privacy     = "closed"
      },
    ]
    members = [
      {
        team     = "developers"
        username = "luismayta"
        role     = "maintainer"
      },
    ]
    permissions = [
      {
        team       = "developers"
        repository = "repoitory-name"
        permission = "admin"
      },
    ]
  }

  module "main" {
      source = "hadenlabs/iam/github"
      version = "0.1.1"

      providers = {
        github = github
      }
      members = local.members
      teams = local.teams
      permissions = local.permissions
  }

```
