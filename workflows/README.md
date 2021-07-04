# Intersight Automation Examples - Workflows
### Sample code to execute a workflow in Intersight

- Rename `intersight.auto.tfvars.example` to `intersight.auto.tfvars`
- Review the inputs of the `intersight_workflow_workflow_info` as they change based on the workflow
- Replace the values into `intersight.auto.tfvars`
- To retrieve the target workflow MOID, the easiest way is to click on the target workflow under 'Orchestration' from the [Intersight UI](https://www.intersight.com) and grab it from the URL (i.e. https://intersight.com/an/workflow/workflow-definitions/edit/1234567890abcdef/ -> MOID: 1234567890abcdef)