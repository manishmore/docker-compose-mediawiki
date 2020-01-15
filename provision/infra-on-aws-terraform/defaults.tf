# Access
variable "access_key" {
             default= "AKIA42DFY7EUDRF2O2P2"
             }
variable "secret_key" {
               default= "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"
          }

# Region
variable "region" {
  type = "string"
  default =  "us-west-2"
}

 # Availability Zones

variable "azs" {
  type = "list"
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "keyname" {
  default = "mediawiki"
}

# RHEL 7.5
variable "aws_ami" {
  default="ami-28e07e50"
}

# VPC and Subnet
variable "aws_cidr_vpc" {
  default = "10.0.0.0/16"
}

variable "aws_cidr_subnet1" {
  default = "10.0.1.0/24"
}

variable "aws_cidr_subnet2" {
  default = "10.0.2.0/24"
}

variable "aws_cidr_subnet3" {
  default = "10.0.3.0/24"
}

variable "aws_sg" {
  default = "sg_mediawiki"
}

variable "aws_tags" {
  type = "map"
  default = {
    "webserver1" = "MediaWiki-Web-1"
	  "webserver2" = "MediaWiki-Web-2"
    "dbserver" = "MediaWikiDB"
  }
}

variable "aws_instance_type" {
  default = "t2.micro"
}
