terraform {
    required_version = ">= 0.10.7"
    backend "s3" {}
}

provider "aws" {
    region = "${var.region}"
}

resource "aws_api_gateway_api_key" "api_key" {
    name = "${var.key_name}"
    description = "${var.key_description}"
    enabled = true
}

resource "aws_api_gateway_usage_plan" "usage_plan" {
    name         = "${var.key_name}"
    description  = "Usage plan specific to the ${var.key_name} API key"
    quota_settings {
        limit  = "${var.quota_limit}"
        period = "${var.quota_period}"
    }
    throttle_settings {
        burst_limit = "${var.burst_limit}"
        rate_limit  = "${var.steady_state_limit}"
    }
    api_stages {
        api_id = "${var.api_gateway_id}"
        stage  = "${var.deployment_stage_name}"
    }
}

resource "aws_api_gateway_usage_plan_key" "usage_plan_key" {
    key_id        = "${aws_api_gateway_api_key.api_key.id}"
    key_type      = "API_KEY"
    usage_plan_id = "${aws_api_gateway_usage_plan.usage_plan.id}"
}
