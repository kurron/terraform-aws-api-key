output "api_gateway_id" {
    value = "${aws_api_gateway_rest_api.rest_api.id}"
    description = "The ID of the REST API"
}

output "api_gateway_root_resource_id" {
    value = "${aws_api_gateway_rest_api.rest_api.root_resource_id}"
    description = "The resource ID of the REST API's root "
}
