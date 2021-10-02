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
	teams := []map[string]interface{}{
		{
			"name":        "test-developer",
			"description": "test description",
			"privacy":     "closed",
		},
	}
	members := []map[string]interface{}{
		{
			"username": "luismayta",
			"role":     "admin",
			"team":     "test-developer",
		},
	}

	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "iam-basic",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"github":  github,
			"teams":   teams,
			"members": members,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
}
