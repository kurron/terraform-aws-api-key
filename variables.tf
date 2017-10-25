variable "region" {
    type = "string"
    description = "The AWS region to deploy into (e.g. us-east-1)"
}

variable "key_name" {
    type = "string"
    description = "Name of the API key."
}

variable "key_description" {
    type = "string"
    description = "Short description of the key's intended use."
}

variable "quota_limit" {
    type = "string"
    description = "The maximum number of requests that can be made in a given time period, e.g. 200."
}

variable "quota_period" {
    type = "string"
    description = "The time period in which the limit applies. Valid values are DAY, WEEK or MONTH."
}

variable "burst_limit" {
    type = "string"
    description = "The maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity, e.g. 500."
}

variable "steady_state_limit" {
    type = "string"
    description = "The API request steady-state rate limit, e.g. 100."
}

variable "api_gateway_id" {
    type = "string"
    description = "ID of the API Gateway to bind the plan to, e.g. d82wq5g0sk."
}

variable "deployment_stage_name" {
    type = "string"
    description = "Name of the deployment stage to bind the plan to, e.g. development."
}
