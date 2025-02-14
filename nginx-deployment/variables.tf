variable "key_pair_name" {
    type = string
}

variable "key_pair_local_path" {
    type = string
}

variable "security_group_name" {
    type = string
}

variable "instance_name" {
  type = string
}

variable "instance_ami" {
  type    = string
}

variable "instance_type" {
  type    = string
}

variable "ports" {
  type = list(number)
}

variable "user_data_file" {
    type = string
}