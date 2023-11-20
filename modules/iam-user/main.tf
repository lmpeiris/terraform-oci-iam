// Copyright (c) 2018, 2022, Oracle and/or its affiliates.

########################
# User
########################

locals {
  user_json =  jsondecode(file(var.user_json))
}

resource "oci_identity_user" "this" {
  for_each       = toset(keys(local.user_json)) 
  compartment_id = var.tenancy_ocid
  name           = each.key
  description    = local.user_json[each.key].description
  email          = local.user_json[each.key].email == null ? "" : local.user_json[each.key].email
}

