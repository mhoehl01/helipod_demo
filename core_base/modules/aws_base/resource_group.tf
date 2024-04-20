resource "aws_resourcegroups_group" "core_rg" {
  name = var.resource_group_name

  resource_query {
    query = <<JSON
{
  "TagFilters": [
    {
      "Key": "workload",
      "Values": ["hub"]
    }
  ]
}
JSON
  }
}