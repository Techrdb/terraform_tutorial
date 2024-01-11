output "Instance" {
  value = aws_instance.myapp-server
}

output "aws_sg" {
  value = aws_security_group.myapp-sg
}