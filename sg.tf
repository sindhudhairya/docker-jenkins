resource "aws_security_group" "docker_sg" {
  name        = var.sg_name
  description = var.sg_desc
  vpc_id      = aws_vpc.docker_vpc.id

  ingress = [
    {
      description      = var.docker1_desc
      from_port        = var.docker1_port
      to_port          = var.docker1_port
      protocol         = var.proto
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },

    {
      description      = var.docker2_desc
      from_port        = var.docker2_port
      to_port          = var.docker2_port
      protocol         = var.proto
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },


    {
      description      = var.ssh_desc
      from_port        = 22
      to_port          = 22
      protocol         = var.proto
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]
  egress = [
    {
      description      = "outgoing traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]
  tags = {
    Name = "docker_sg"
  }
}