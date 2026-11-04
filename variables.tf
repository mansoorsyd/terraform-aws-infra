variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "my_ip" {
  description = "Your IP in CIDR format, e.g. 1.2.3.4/32"
  type        = string
}
