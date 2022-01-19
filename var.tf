variable "ec2_ami" {
	type=map
	default={
		us-east-1="ami-08e4e35cccc6189f4"
		us-east-2="ami-0ee498eea5a3c3f90"
	}

}
variable "ec2_instance_name" {
	default="linux"
}
variable "ec2_instance_type"{
	type=map
	default={
		linux="t2.micro"
		windows="t2.nano"
	}
}
