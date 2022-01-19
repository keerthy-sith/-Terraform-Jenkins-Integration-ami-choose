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
