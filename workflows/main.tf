# Intersight Provider Configuration
terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.11"
    }
  }
}

provider "intersight" {
  apikey    = var.apikey
  secretkey = var.secretkey
  endpoint  = var.endpoint
}

# Data source to fetch the organization MOID
data "intersight_organization_organization" "myorg" {
  name = var.organization
}

# Execute the workflow 
resource "intersight_workflow_workflow_info" "myworkflow" {
  name   = var.workflowname
  action = "Start"

  input = {
    "name"        = "httpbin"
    "endpoint"    = "httpbin.org"
    "webexroomid" = var.roomid
  }

  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.myorg.id
  }
  workflow_definition {
    object_type = "workflow.WorkflowDefinition"
    moid        = var.workflow_moid
  }
}


