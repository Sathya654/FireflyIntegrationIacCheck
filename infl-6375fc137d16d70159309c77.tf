resource "aws_instance" "FireflyIntegrationTestManual1-3a4" {
  ami                         = "ami-064d05b4fe8515623"
  associate_public_ip_address = false
  availability_zone           = "us-east-1a"
  cpu_core_count              = 1
  cpu_threads_per_core        = 1
  credit_specification {
    cpu_credits = "standard"
  }
  disable_api_termination = false
  ebs_optimized           = false
  enclave_options {
    enabled = false
  }
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.nano"
  key_name                             = "${aws_key_pair.fire1-f1c.id}"
  monitoring                           = false
  private_ip                           = "10.11.1.159"
  root_block_device {
    iops        = 100
    volume_size = 30
  }
  subnet_id = "${aws_subnet.Subnet-terraform-selfhost-from-azure-VM-research-08c.id}"
  tags = {
    Name = "FireflyIntegrationTestManual1"
  }
  tenancy                = "default"
  user_data              = "4eb78bee9984cb86ccaf87008a7c06106f889968"
  vpc_security_group_ids = ["${aws_security_group.launch-wizard-1-5b7.id}"]
}




resource "aws_key_pair" "fire1-f1c" {
  key_name   = "fire1"
  public_key = "PUT-VALUE-HERE"
}




resource "aws_subnet" "Subnet-terraform-selfhost-from-azure-VM-research-08c" {
  cidr_block                          = "10.11.1.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name = "Subnet-terraform-selfhost-from-azure-VM-research"
  }
  vpc_id = "${aws_vpc.VPS-terraform-selfhost-from-azure-VM-research-087.id}"
}




resource "aws_security_group" "launch-wizard-1-5b7" {
  description = "launch-wizard-1 created 2022-11-16T18:27:15.868Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 3389
    protocol    = "tcp"
    to_port     = 3389
  }
  name   = "launch-wizard-1"
  vpc_id = "${aws_vpc.VPS-terraform-selfhost-from-azure-VM-research-087.id}"
}




resource "aws_vpc" "VPS-terraform-selfhost-from-azure-VM-research-087" {
  cidr_block                     = "10.11.0.0/16"
  enable_classiclink_dns_support = false
  enable_dns_hostnames           = true
  tags = {
    Name = "VPS-terraform-selfhost-from-azure-VM-research"
  }
}

