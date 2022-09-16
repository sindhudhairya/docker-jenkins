resource "aws_internet_gateway" "docker_ig" {
  vpc_id = aws_vpc.docker_vpc.id

  tags = {
    Name = var.igw_tag
  }
}