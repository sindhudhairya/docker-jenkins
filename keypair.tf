resource "aws_key_pair" "Docker_kp" {
  key_name   = var.key_name
  public_key = var.pub_key
}