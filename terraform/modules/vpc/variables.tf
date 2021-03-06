# variable "name" {
#   description = "Name to be used on all the resources as identifier"
#   default     = ""
# }

variable "availability_zones" {
  description = "Availaibility zones"
  type        = list(string)
}

variable "cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.10.0.0/16"
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
  # default = ["10.10.11.0/24", "10.10.12.0/24"]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = []
  # default = ["10.10.1.0/24", "10.10.2.0/24"]
}

variable "database_subnets" {
  description = "A list of database subnets"
  type        = list(string)
  default     = []
  # default = ["10.10.21.0/24", "10.10.22.0/24"]
}

variable "elasticache_subnets" {
  description = "A list of elasticache subnets"
  type        = list(string)
  default     = []
}

# Used to allow direct remote access to db
variable "create_database_subnet_group" {
  description = "Whether to create database subnet group"
  default     = false
}

# Used to allow direct remote access to db
variable "create_database_subnet_route_table" {
  description = "Whether to create database subnet route table"
  default     = false
}

# Used to allow direct remote access to db
variable "create_database_internet_gateway_route" {
  description = "Whether to create database internet gateway route"
  default     = false
}

# create_database_subnet_group           = true
# create_database_subnet_route_table     = true
# create_database_internet_gateway_route = true

variable "enable_nat_gateway" {
  description = "Provision NAT Gateways for each of your private networks"
  default     = false
}

variable "single_nat_gateway" {
  description = "Provision a single shared NAT Gateway across all of your private networks"
  default     = false
}

#variable "enable_dynamodb_endpoint" {
#  description = "Provision a DynamoDB endpoint to the VPC"
#  default     = false
#}

#variable "enable_s3_endpoint" {
#  description = "Provision an S3 endpoint to the VPC"
#  default     = false
#}

# variable "map_public_ip_on_launch" {
#   description = "Should be false if you do not want to auto-assign public IP on launch"
#   default     = true
# }

# variable "private_propagating_vgws" {
#   description = "A list of VGWs the private route table should propagate"
#   default     = []
# }

# variable "public_propagating_vgws" {
#   description = "A list of VGWs the public route table should propagate"
#   default     = []
# }

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnets"
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnets"
  default     = {}
}

variable "public_route_table_tags" {
  description = "Additional tags for the public route tables"
  default     = {}
}

variable "private_route_table_tags" {
  description = "Additional tags for the private route tables"
  default     = {}
}

variable "database_subnet_tags" {
  description = "Additional tags for the database subnets"
  default     = {}
}

variable "elasticache_subnet_tags" {
  description = "Additional tags for the elasticache subnets"
  default     = {}
}

variable "private_dns_domain" {
  description = "Private DNS domain, e.g. foo.local"
  default     = ""
}

variable "enable_route53" {
  description = "Whether or not to enable route53 zone creation"
  default     = true
}
