resource "aws_subnet" "docker_public_subnet" {
  vpc_id                  = aws_vpc.docker_vpc.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.subnet_az

  tags = {
    Name = var.subnet_tag
  }
}