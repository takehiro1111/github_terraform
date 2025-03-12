# https://github.com/terraform-linters/tflint-ruleset-terraform

plugin "terraform" {
    enabled = true
    version = "0.11.0"
    source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}

rule "terraform_standard_module_structure"  {
  enabled = false
}
