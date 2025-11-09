variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.large"], var.instance_type)
    error_message = "Invalid instance type. Must be one of: t2.micro, t3.small, m5.large."
  }
}

variable "sg_id" {
  type = list
}

variable "tags" {
  type = map
  default = { }
}