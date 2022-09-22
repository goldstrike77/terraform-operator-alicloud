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
      name = "rg-network-dmz-001"
      display_name = "Network resource group for demo."
    }
    vpc = [
      {
        name = "vpc-dmz-cn-shanghai-001"
        location = "cn-shanghai"
        tags = {}
        cidr = "10.10.0.0/16"
        secondary_cidr =  ["10.11.0.0/16","10.12.0.0/16"]
        description = "descriptions"
        vswitch = [
          {
            name = "vswitch-dmz-cn-shanghai-001"
            cidr = "10.10.0.0/24"
            zone_id = "cn-shanghai-c"
            tags = {}
            description = "descriptions"
          },
          {
            name = "vswitch-dmz-cn-shanghai-002"
            cidr = "10.10.1.0/24"
            zone_id = "cn-shanghai-c"
            tags = {}
            description = "descriptions"
          }
        ]
        security_group = [
          {
            name = "sg-dmz-cn-shanghai-001"
            type = "normal"
            inner_access_policy = "Accept"
            tags = {}
            description = "descriptions"
            rule = [
              {
                type = "ingress"
                ip_protocol = "tcp"
                port_range = "80/80"
                nic_type = "intranet"
                policy = "accept"
                priority = 10
                cidr_ip = "0.0.0.0/0"
              },
              {
                type = "ingress"
                ip_protocol = "tcp"
                port_range = "443/443"
                nic_type = "intranet"
                policy = "accept"
                priority = 15
                cidr_ip = "0.0.0.0/0"
              }
            ]
          },
          {
            name = "sg-dmz-cn-shanghai-002"
            type = "normal"
            inner_access_policy = "Accept"
            tags = {}
            description = "descriptions"
            rule = [
              {
                type = "ingress"
                ip_protocol = "tcp"
                port_range = "80/80"
                nic_type = "intranet"
                policy = "accept"
                priority = 10
                cidr_ip = "0.0.0.0/0"
              },
              {
                type = "ingress"
                ip_protocol = "tcp"
                port_range = "443/443"
                nic_type = "intranet"
                policy = "accept"
                priority = 15
                cidr_ip = "0.0.0.0/0"
              }
            ]
          }
        ]
      },
      {
        name = "vpc-app-cn-shanghai-001"
        location = "cn-shanghai"
        tags = {}
        cidr = "10.20.0.0/16"
        secondary_cidr =  ["10.21.0.0/16","10.22.0.0/16"]
        description = "descriptions"
        vswitch = [
          {
            name = "vswitch-app-cn-shanghai-001"
            cidr = "10.20.0.0/24"
            zone_id = "cn-shanghai-c"
            tags = {}
            description = "descriptions"
          },
          {
            name = "vswitch-app-cn-shanghai-002"
            cidr = "10.20.1.0/24"
            zone_id = "cn-shanghai-c"
            tags = {}
            description = "descriptions"
          }
        ]
        security_group = [
          {
            name = "sg-app-cn-shanghai-001"
            type = "normal"
            inner_access_policy = "Accept"
            tags = {}
            description = "descriptions"
            rule = [
              {
                type = "ingress"
                ip_protocol = "tcp"
                port_range = "80/80"
                nic_type = "intranet"
                policy = "accept"
                priority = 10
                cidr_ip = "0.0.0.0/0"
              },
              {
                type = "ingress"
                ip_protocol = "tcp"
                port_range = "443/443"
                nic_type = "intranet"
                policy = "accept"
                priority = 15
                cidr_ip = "0.0.0.0/0"
              }
            ]
          },
          {
            name = "sg-app-cn-shanghai-002"
            type = "normal"
            inner_access_policy = "Accept"
            tags = {}
            description = "descriptions"
            rule = [
              {
                type = "ingress"
                ip_protocol = "tcp"
                port_range = "6379/6379"
                nic_type = "intranet"
                policy = "accept"
                priority = 10
                cidr_ip = "0.0.0.0/0"
              },
              {
                type = "ingress"
                ip_protocol = "tcp"
                port_range = "443/443"
                nic_type = "intranet"
                policy = "accept"
                priority = 15
                cidr_ip = "0.0.0.0/0"
              }
            ]
          }
        ]
      }
    ]
  }
}