variable "region" {
    type = "string"
    description = "The AWS region to deploy into (e.g. us-east-1)"
}

variable "api_name" {
    type = "string"
    description = "Name of the API"
}

variable "api_description" {
    type = "string"
    description = "Short description about the API"
}

variable "domain_name" {
    type = "string"
    description = "Custom domain name to assign to the gateway, e.g. api-gateway.example.com"
}

variable "certificate_arn" {
    type = "string"
    description = "ARN of the Amazon managed TLS certificate, e.g. arn:aws:acm:us-east-1:037083514056:certificate/foo"
}

variable "hosted_zone_id" {
    type = "string"
    description = "The ID of the hosted zone to contain this record."
}
