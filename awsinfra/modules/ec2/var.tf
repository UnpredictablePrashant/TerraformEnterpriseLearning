variable "ami_id" {
    description = "The AMI ID to use for the instance"
    type        = string
}

variable "instance_type" {
    description = "The type of instance to use"
    type        = string
}

variable "instance_name" {
    description = "The name to assign to the instance"
    type        = string
}