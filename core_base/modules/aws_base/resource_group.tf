resource "aws_resourcegroups_group" "test" {
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