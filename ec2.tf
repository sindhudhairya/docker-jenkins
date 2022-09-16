data "template_file" "ec2_user_data" {
  template = file("${path.module}/installdocker.sh")
}

resource "aws_instance" "docker-instance" {
  ami                         = var.ubuntu_ami #in us-east-1
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.docker_sg.id]
  subnet_id                   = aws_subnet.docker_public_subnet.id
  associate_public_ip_address = var.public_ip
  key_name                    = var.key_name
  user_data                   = data.template_file.ec2_user_data.template
}