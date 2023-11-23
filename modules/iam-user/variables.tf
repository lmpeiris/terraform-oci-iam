// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

variable "tenancy_ocid" {
  type = string
  description = "The OCID of the tenancy."
  default = null
}

variable "user_json" {
  type = string
  description = "Path to the json of user info. keys should be same as in user_list"
  default = null
}

variable "tags" {
        type = object({
                devops_stage = string
                api_account  = string
                cost_center = string
                modified_by = string
                deployed_by = string
                app_id = string
                deploy_id = string
                })
        }
