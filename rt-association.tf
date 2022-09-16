resource "aws_route_table_association" "docker_publicrt_assoc" {
  subnet_id      = aws_subnet.docker_public_subnet.id
  route_table_id = aws_route_table.docker_public_rt.id
}