module "resource_group" {
  source = "git::https://github.com/goldstrike77/terraform-module-alicloud.git//resource-group?ref=v0.1"
  res_spec = var.res_spec
}