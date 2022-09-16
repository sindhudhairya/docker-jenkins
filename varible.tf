variable "region" {
  type        = string
  description = "Aws region"
}
variable "vpc_cidr" {
  type        = string
  description = "vpc_cidr"
}
variable "vpc_tag" {
  type        = string
  description = "tag for vpc"
}
variable "subnet_cidr" {
  type        = string
  description = "subnet_cidr"
}
variable "subnet_az" {
  type        = string
  description = "az for subnet"
}
variable "subnet_tag" {
  type        = string
  description = "tag for subnet"
}
variable "igw_tag" {
  type        = string
  description = "tag for igw"
}
variable "public_rt" {
  type        = string
  description = "tag for public rt"
}
variable "sg_name" {
  type        = string
  description = "name of security group"
}
variable "sg_desc" {
  type        = string
  description = "name of security group"
}
variable "docker1_desc" {
  type        = string
  description = "open port 80"
}
variable "docker1_port" {
  type        = string
  description = "open port 80"
}
variable "proto" {
  type        = string
  description = "protocol"
}
variable "docker2_desc" {
  type        = string
  description = "open port 8080"
}
variable "docker2_port" {
  type        = string
  description = "open port 8080"
}
variable "ssh_desc" {
  type        = string
  description = "for ssh"
}
variable "pub_key" {
  type        = string
  description = "public key"
}
variable "key_name" {
  type        = string
  description = "keyname"
}
variable "ubuntu_ami" {
  type        = string
  description = "ami"
}
variable "instance_type" {
  type        = string
  description = "instance size"
}
variable "public_ip" {
  type        = string
  description = "pub ip"
}