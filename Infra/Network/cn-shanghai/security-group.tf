module "security_group" {
  source = "git::https://github.com/goldstrike77/terraform-module-alicloud.git//security-group?ref=v0.1"
  tags = var.tags
  res_spec = var.res_spec
  depends_on = [module.vpc]
}