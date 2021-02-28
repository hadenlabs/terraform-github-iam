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
