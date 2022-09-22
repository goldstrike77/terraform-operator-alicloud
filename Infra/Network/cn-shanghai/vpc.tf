module "vpc" {
  source = "git::https://github.com/goldstrike77/terraform-module-alicloud.git//vpc?ref=v0.1"
  tags = var.tags
  res_spec = var.res_spec
  depends_on = [module.resource_group]
}