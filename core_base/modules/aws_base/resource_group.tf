resource "aws_resourcegroups_group" "core_rg" {
  name = "rg-helipodcore-demo-centraleu1"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
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