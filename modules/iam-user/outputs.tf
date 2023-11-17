// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

output "name_ocid" {
  value       = zipmap([ for user in oci_identity_user.this: user.name  ], [ for user in oci_identity_user.this: user.id  ])
  description = "list of username and associated OCID"
}

output "user_id" {
  value       = [ for user in oci_identity_user.this: user.id  ]
  description = "list of users OCID"
}
