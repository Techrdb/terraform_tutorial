output "aws_ami_id" {
  value = module.myapp-webserver.Instance.id
}

output "vpc_security_group_ids" {
  value = module.myapp-webserver.aws_sg.id
}

output "ec2_public_ip" {
  value = module.myapp-webserver.Instance.public_ip
}
