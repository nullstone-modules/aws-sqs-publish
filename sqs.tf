data "ns_connection" "sqs" {
  name     = "sqs"
  type     = "sqs/aws"
  contract = "datastore/aws/sqs"
}

locals {
  queue_name = data.ns_connection.sqs.outputs.queue_name
  queue_url  = data.ns_connection.sqs.outputs.queue_url
  queue_arn  = data.ns_connection.sqs.outputs.queue_arn
}
