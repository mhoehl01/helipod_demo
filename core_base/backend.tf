terraform {
  cloud {
    organization = "cw_playground_mhoehl"

    workspaces {
      name = "core_base"
    }
  }
}