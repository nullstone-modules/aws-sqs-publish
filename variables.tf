variable "app_metadata" {
  description = <<EOF
Nullstone automatically injects metadata from the app module into this module through this variable.
This variable is a reserved variable for capabilities.
This contains information like `security_group_id` that is used by the capability.
EOF

  type    = map(string)
  default = {}
}
