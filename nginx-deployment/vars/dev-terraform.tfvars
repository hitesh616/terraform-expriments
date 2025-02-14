key_pair_name = "dev_assignment_key"
key_pair_local_path = "~/.ssh/id_rsa.pub"
security_group_name = "dev_Assignment_security_group"
instance_name = "dev-assignment-instance"
instance_ami = "ami-00bb6a80f01f03502"
instance_type = "t2.nano"
ports = [ 80, 22 ]
user_data_file = "./utilities/user_data.sh"


