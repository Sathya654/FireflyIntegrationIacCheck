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
  key_name                             = "fire1"
  monitoring                           = false
  private_ip                           = "10.11.1.159"
  root_block_device {
    iops        = 100
    volume_size = 30
  }
  subnet_id = "subnet-0aec7441d7f21d848"
  tags = {
    Name = "FireflyIntegrationTestManual1"
  }
  tenancy                = "default"
  user_data              = "4eb78bee9984cb86ccaf87008a7c06106f889968"
  vpc_security_group_ids = ["sg-027bbeed49abe0a1a"]
}

