module "kvstore_instance" {
  source = "/home/suzhetao/terraform_workspace/module/terraform-module-alicloud/kvstore-instance"
  tags = var.tags
  res_spec = var.res_spec
  depends_on = [module.resource_group]
}