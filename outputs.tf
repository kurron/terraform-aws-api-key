output "plan_key_id" {
    value = "${aws_api_gateway_usage_plan_key.usage_plan_key.id}"
    description = "The Id of a usage plan key."
}

output "key_id" {
    value = "${aws_api_gateway_usage_plan_key.usage_plan_key.key_id}"
    description = "The identifier of the API gateway key."
}

output "usage_plan_id" {
    value = "${aws_api_gateway_usage_plan_key.usage_plan_key.usage_plan_id}"
    description = "The identifier of the usage plan."
}

output "usage_plan_key_name" {
    value = "${aws_api_gateway_usage_plan_key.usage_plan_key.name}"
    description = "The name of a usage plan key."
}

output "api_key_value" {
    value = "${aws_api_gateway_api_key.api_key.value}"
    description = "The value of the API key."
}
