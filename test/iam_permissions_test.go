package test

import (
	"testing"

	"os"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestPermissionsSuccess(t *testing.T) {
	t.Parallel()
	github := map[string]interface{}{
		"organization": os.Getenv("GITHUB_ORGANIZATION"),
		"token":        os.Getenv("GITHUB_TOKEN"),
	}
	repositoryName := "test-repository"
	team := map[string]interface{}{
		"name":        "test-developer",
		"description": "test description",
		"privacy":     "closed",
	}
	maintainers := []string{
		"luismayta",
	}
	members := []string{
		"dum-u",
	}
	permissions := []map[string]interface{}{
		{
			"repository": repositoryName,
			"permission": "pull",
		},
	}

	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "iam-permissions",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"github":          github,
			"repository_name": repositoryName,
			"team":            team,
			"maintainers":     maintainers,
			"members":         members,
			"permissions":     permissions,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
}
