# 生成提供者依赖配置。
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  required_providers {
    aliyun = {
      source = "aliyun/alicloud"
      version = "~> 1.186.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.4.3"
    }
  }
}

provider "alicloud" {
  region = "${basename(get_terragrunt_dir())}"
}
EOF
}

# 仍然必须指定每个工作目录中使用的状态文件后端，但不需要将配置逐一复制和粘贴到每个工作目录，Terragrunt会在运行时根据模板和目录结构正确识别。
# generate "backend" {
#   path = "backend.tf"
#   if_exists = "overwrite_terragrunt"
#   contents = <<EOF
# terraform {
#   backend "oss" {
#     bucket = "xxxxxxxxxxxxx"
#     prefix = "env:"
#     key = "tfstate/operator/${path_relative_to_include()}/terraform.tfstate"
#     acl = "private"
#     region = "cn-hangzhou"
#     encrypt = "true"
#     tablestore_endpoint = "https://xxxxxxxxxxxxx.cn-hangzhou.Tablestore.aliyuncs.com"
#     tablestore_table = "xxxxxxxxxxxxx"
#   }
# }
# EOF
# }