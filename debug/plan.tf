terraform {
    required_version = ">= 0.10.7"
    backend "s3" {}
}

data "terraform_remote_state" "api_gateway" {
    backend = "s3"
    config {
        bucket = "transparent-test-terraform-state"
        key    = "us-west-2/debug/aplication-services/api-gateway/terraform.tfstate"
        region = "us-east-1"
    }
}

data "terraform_remote_state" "api_gateway_binding" {
    backend = "s3"
    config {
        bucket = "transparent-test-terraform-state"
        key    = "us-west-2/debug/aplication-services/api-gateway-binding/terraform.tfstate"
        region = "us-east-1"
    }
}

module "api_key" {
    source = "../"

    region                = "us-west-2"
    key_name              = "Debug"
    key_description       = "Just testing the Terraform module"
    quota_limit           = "10000"
    quota_period          = "DAY"
    burst_limit           = "100"
    steady_state_limit    = "10"
    api_gateway_id        = "${data.terraform_remote_state.api_gateway.api_gateway_id}"
    deployment_stage_name = "${data.terraform_remote_state.api_gateway_binding.deployment_stage_name}"
}

output "plan_key_id" {
    value = "${module.api_key.plan_key_id}"
}

output "key_id" {
    value = "${module.api_key.key_id}"
}

output "usage_plan_id" {
    value = "${module.api_key.usage_plan_id}"
}

output "usage_plan_key_name" {
    value = "${module.api_key.usage_plan_key_name}"
}

output "api_key_value" {
    value = "${module.api_key.api_key_value}"
}
