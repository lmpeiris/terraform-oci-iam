// Copyright (c) 2018, 2022, Oracle and/or its affiliates.

########################
# User
########################
resource "oci_identity_user" "this" {
  for_each       = var.users
  compartment_id = var.tenancy_ocid
  name           = var.users[each.key].name
  description    = var.users[each.key].description
  email          = var.users[each.key].email == null ? "" : var.users[each.key].email
}

