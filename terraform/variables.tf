variable "access_key" {
  description = "AWS access key"
}

variable "secret_key" {
  description = "AWS secret access key"
}

variable "region"     {
  description = "AWS region"
  default     = "us-west-1"
}

variable "az"     {
  description = "AWS availability_zone"
  default     = "us-west-1a"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.128.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.128.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  default     = "10.128.1.0/24"
}

/* Ubuntu 16.04 AMIs by region */
variable "amis" {
  description = "Base AMI to launch the instances with"
  default = {
    us-west-1 = "ami-056411f6be4840844"
    us-west-2 = "ami-0ea790e761025f9ce"
    us-east-1 = "ami-05a36d3b9aa4a17ac"
  }
}
