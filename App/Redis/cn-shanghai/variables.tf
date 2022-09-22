variable "tags" {
  default = {
    location    = "cn-shanghai"
    environment = "dmz"
    customer    = "demo"
    owner       = "somebody"
    email       = "somebody@mail.com"
    title       = "Engineer"
    department  = "DevOps"
  }
}

variable "res_spec" {
  default = {
    rg = {
      name = "rg-app-bus-001"
      display_name = "Business resource group for demo."
    }
    kvstore = [
      {
        db_instance_name = "redis-app-bus-001"
        instance_class = "redis.master.small.default"
        capacity = 10
        zone_id = "cn-shanghai-c"
        secondary_zone_id = "cn-shanghai-a"
        payment_type = "PrePaid"
        period = 1
        auto_renew = false
        auto_renew_period = 1
        instance_type = "Redis"
        vswitch_name = "vswitch-app-cn-shanghai-002"
        engine_version = "4.0"
        tags = {}
        security_ips = ["0.0.0.0"]
        security_group_name = "sg-app-cn-shanghai-002"
        vpc_auth_mode = "Open"
        config = { appendonly = "yes", lazyfree-lazy-eviction = "yes" }
        maintain_start_time = "16:00Z"
        maintain_end_time = "20:00Z"
        resource_group_id = "rg-123456"
        ssl_enable = "Enable"
        db_audit = true
        retention = 7
        backup_period = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        backup_time = "20:00Z-21:00Z"
        account_name = ["userA", "userB", "userC"]
      }
    ]
  }
}