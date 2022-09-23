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
        db_instance_name = ["redis-app-bus-001"]
        password = "Passw0rd"
        port = "6379"
        public = false
        instance_class = "redis.basic.mid.default"
        zone_id = "cn-shanghai-f"
        payment_type = "PostPaid"
        instance_type = "Redis"
        vswitch_name = "vswitch-app-cn-shanghai-002"
        engine_version = "5.0"
        tags = {}
        security_ips = ["127.0.0.1"]
        vpc_auth_mode = "Open"
        config = {}
        maintain_start_time = "16:00Z"
        maintain_end_time = "20:00Z"
        db_audit = true
        retention = 7
        backup_period = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        backup_time = "20:00Z-21:00Z"
      },
      {
        db_instance_name = ["redis-app-bus-002","redis-app-bus-003"]
        password = "Passw0rd"
        port = "6379"
        public = false
        instance_class = "redis.basic.small.default"
        zone_id = "cn-shanghai-f"
        payment_type = "PostPaid"
        instance_type = "Redis"
        vswitch_name = "vswitch-app-cn-shanghai-002"
        engine_version = "5.0"
        tags = {}
        security_ips = ["127.0.0.1"]
        vpc_auth_mode = "Open"
        config = {}
        maintain_start_time = "16:00Z"
        maintain_end_time = "20:00Z"
        db_audit = false
        retention = 7
        backup_period = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        backup_time = "20:00Z-21:00Z"
      }
    ]
  }
}