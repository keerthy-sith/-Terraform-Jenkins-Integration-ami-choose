provider "aws" {
	region="${var.region}"
}

resource "aws_instance" "ec2" { 
	ami = "${lookup(var.ec2_ami,var.region)}" 
	instance_type = "${lookup(var.ec2_instance_type,var.ec2_instance_name)}"
	tags={
		Name="Myy-ec2"
	}
}


variable "region" {
	default="us-east-1"
}

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
