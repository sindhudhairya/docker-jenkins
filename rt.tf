resource "aws_route_table" "docker_public_rt" {
  vpc_id = aws_vpc.docker_vpc.id

  tags = {
    Name = var.public_rt
  }

}
resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.docker_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.docker_ig.id
}