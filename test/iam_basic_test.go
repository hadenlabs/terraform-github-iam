package test

import (
	"testing"

	"os"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestProjectWithBasic(t *testing.T) {
	github := map[string]interface{}{
		"organization": os.Getenv("GITHUB_ORGANIZATION"),
		"token":        os.Getenv("GITHUB_TOKEN"),
	}
	maintainers := []string{
		"luismayta",
	}
	members := []string{
		"dum-u",
	}
	team := map[string]interface{}{
		"name":        "test-developer",
		"description": "test description",
		"maintainers": maintainers,
		"members":     members,
		"privacy":     "closed",
	}

	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "iam-basic",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"github":      github,
			"team":        team,
			"maintainers": maintainers,
			"members":     members,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
}
