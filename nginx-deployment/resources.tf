
#create ssh key 
resource "aws_key_pair" "key_pair" {
    key_name = var.key_pair_name
    public_key = file(var.key_pair_local_path)
}

#create ec2 instance  type = ubuntu
resource "aws_instance" "ubuntu_instance" {
    ami = var.instance_ami
    instance_type = var.instance_type
    key_name = aws_key_pair.key_pair.key_name
    vpc_security_group_ids = [aws_security_group.sec_group.id]
    tags = {
      name = var.instance_name
    }

    user_data = file(var.user_data_file)
    
}

#create security group  with port 80 and 22 
resource "aws_security_group" "sec_group" {
    name = var.security_group_name
    description = "Assignment security group"

    dynamic "ingress" {
      for_each = var.ports
      iterator = port
      content {
         from_port = port.value
        to_port = port.value
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }
    
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

