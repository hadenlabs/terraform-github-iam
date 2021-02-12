<!--


  ** DO NOT EDIT THIS FILE
  **
  ** 1) Make all changes to `README.yaml`
  ** 2) Run`make readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **


  -->

# terraform-github-iam

[![Build Status](https://travis-ci.org/hadenlabs/terraform-github-iam.svg?branch=main)](https://travis-ci.org/hadenlabs/terraform-github-iam) [![Latest Release](https://img.shields.io/github/release/hadenlabs/terraform-github-iam.svg)](https://travis-ci.org/hadenlabs/terraform-github-iam/releases)

Terraform module to provision an github iam.

---

This project is part of our comprehensive [hadenlabs](https://hadenlabs.com) modules of terraform.

## Usage

```hcl
  module "main" {
    source = "hadenlabs/iam/github"
    version = "0.0.0"

    providers {
      github = github
    }

  }
```

Full working example can be found in [example](./example) folder.

 <!-- DO NOT EDIT. THIS FILE IS GENERATED BY THE MAKEFILE. -->

# Terraform variables

This document gives an overview of variables used in the platform of the terraform-github-iam.

## Requirements

| Name      | Version |
| --------- | ------- |
| terraform | >= 0.13 |

## Providers

No provider.

## Inputs

| Name | Description                                        | Type       | Default | Required |
| ---- | -------------------------------------------------- | ---------- | ------- | :------: |
| tags | This is to help you add tags to your cloud objects | `map(any)` | `null`  |    no    |

## Outputs

No output.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/hadenlabs/terraform-github-iam/issues), send us an [email][email] or join our [Slack Community][slack].

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/hadenlabs/terraform-github-iam/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing this project or [help out](https://hadenlabs.com) with our other projects, we would love to hear from you! Shoot us an [email](mailto:support@hadenlabs.com).

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

1.  **Fork** the repo on GitHub
2.  **Clone** the project to your own machine
3.  **Commit** changes to your own branch
4.  **Push** your work back up to your fork
5.  Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to rebase the latest changes from "upstream" before making a pull request!

### Versioning

Releases are managed using github release feature. We use \[Semantic Versioning\](<http://semver.org>) for all the releases. Every change made to the code base will be referred to in the release notes (except for cleanups and refactorings).

## Copyright

Copyright © 2018-2021 [Hadenlabs](https://hadenlabs.com)

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

This project is maintained and funded by [Hadenlabs][https://hadenlabs.com]. Like it? Please let us know at <support@hadenlabs.com>

### Contributors

| [![Luis Mayta][luismayta_avatar]][luismayta_homepage]<br/>[Luis Mayta][luismayta_homepage] |
| ------------------------------------------------------------------------------------------ |

[luismayta_homepage]: https://github.com/luismayta
[luismayta_avatar]: https://github.com/luismayta.png?size=150