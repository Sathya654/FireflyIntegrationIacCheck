resource "aws_subnet" "Privatesubnet2A-403" {
  cidr_block                          = "10.0.32.0/19"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                              = "Private subnet 2A"
    Network                           = "Private"
    "kubernetes.io/role/internal-elb" = ""
  }
  vpc_id = "vpc-0b8c5122fd3861924"
}




resource "aws_subnet" "Subnet-terraform-selfhost-from-azure-VM-research-08c" {
  cidr_block                          = "10.11.1.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name = "Subnet-terraform-selfhost-from-azure-VM-research"
  }
  vpc_id = "vpc-0702673d97f98178a"
}




resource "aws_subnet" "Privatesubnet1A-cfe" {
  cidr_block                          = "10.0.0.0/19"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                              = "Private subnet 1A"
    Network                           = "Private"
    "kubernetes.io/role/internal-elb" = ""
  }
  vpc_id = "vpc-0b8c5122fd3861924"
}




resource "aws_subnet" "Privatesubnet2A-a4e" {
  cidr_block                          = "10.0.32.0/19"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                              = "Private subnet 2A"
    Network                           = "Private"
    "kubernetes.io/role/internal-elb" = ""
  }
  vpc_id = "vpc-04dc97749a227a071"
}




resource "aws_subnet" "Publicsubnet2-300" {
  cidr_block                          = "10.0.144.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                     = "Public subnet 2"
    Network                  = "Public"
    "kubernetes.io/role/elb" = ""
  }
  vpc_id = "vpc-0bbebdf9568d0bef8"
}




resource "aws_subnet" "Privatesubnet1A-751" {
  cidr_block                          = "10.0.0.0/19"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                              = "Private subnet 1A"
    Network                           = "Private"
    "kubernetes.io/role/internal-elb" = ""
  }
  vpc_id = "vpc-0bbebdf9568d0bef8"
}




resource "aws_subnet" "Privatesubnet3A-ded" {
  cidr_block                          = "10.0.64.0/19"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                              = "Private subnet 3A"
    Network                           = "Private"
    "kubernetes.io/role/internal-elb" = ""
  }
  vpc_id = "vpc-04dc97749a227a071"
}




resource "aws_subnet" "Privatesubnet2A-d06" {
  cidr_block                          = "10.0.32.0/19"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                              = "Private subnet 2A"
    Network                           = "Private"
    "kubernetes.io/role/internal-elb" = ""
  }
  vpc_id = "vpc-00393c34fb6d78d42"
}




resource "aws_subnet" "Privatesubnet2A-17b" {
  cidr_block                          = "10.0.32.0/19"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                              = "Private subnet 2A"
    Network                           = "Private"
    "kubernetes.io/role/internal-elb" = ""
  }
  vpc_id = "vpc-0bbebdf9568d0bef8"
}




resource "aws_subnet" "Privatesubnet1A-369" {
  cidr_block                          = "10.0.0.0/19"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                              = "Private subnet 1A"
    Network                           = "Private"
    "kubernetes.io/role/internal-elb" = ""
  }
  vpc_id = "vpc-04dc97749a227a071"
}




resource "aws_subnet" "Privatesubnet1A-4db" {
  cidr_block                          = "10.0.0.0/19"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                              = "Private subnet 1A"
    Network                           = "Private"
    "kubernetes.io/role/internal-elb" = ""
  }
  vpc_id = "vpc-00393c34fb6d78d42"
}




resource "aws_subnet" "Publicsubnet1-734" {
  cidr_block                          = "10.0.128.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name                     = "Public subnet 1"
    Network                  = "Public"
    "kubernetes.io/role/elb" = ""
  }
  vpc_id = "vpc-0bbebdf9568d0bef8"
}

