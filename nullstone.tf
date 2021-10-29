terraform {
  required_providers {
    ns = {
      source = "nullstone-io/ns"
    }
  }
}

data "ns_workspace" "this" {}

data "ns_connection" "sqs" {
  name = "sqs"
  type = "sqs/aws"
}

locals {
  tags       = data.ns_workspace.this.tags
  queue_name = data.ns_connection.sqs.outputs.queue_name
  queue_url  = data.ns_connection.sqs.outputs.queue_url
  queue_arn  = data.ns_connection.sqs.outputs.queue_arn
}
