#### Environment variables
```hcl
export ALICLOUD_ACCESS_KEY="LTAI5tQ3uEh6Qxxxxxxxxxxx"
export ALICLOUD_SECRET_KEY="raY5suVDVz91ga7nNxxxxxxxxxxxxx"
```

#### Requirements
| Name | Version |
|------|---------|
| [terraform](https://github.com/hashicorp/terraform) | >= 1.186.0 |
| [terragrunt](https://github.com/gruntwork-io/terragrunt) | >= 0.38.12 |

#### Providers
| Name | Version |
|------|---------|
| aliyun/alicloud | >= 1.186.0 |

#### Running
```hcl
terragrunt run-all plan --terragrunt-parallelism 1
terragrunt run-all apply --terragrunt-parallelism 1
```

#### Really serious rules
- `make small changes and commit`
- `write good commit message`.
This ensures your change is easy to understand, and the chance to be rejected will be small

#### Rules to make changes
**before the release process is automated**
1. Make sure you are working on the **correct environment**.
2. Do `plan` before everything, read the planned change output carefully .
3. **Do not fuck up step 1 and 2**