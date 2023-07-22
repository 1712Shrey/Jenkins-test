resource "aws_instance" "spm-jenkins" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.security-grp.id]
  key_name                    = "shrey-web1"
  associate_public_ip_address = true

  tags = {
    Name = "SPM-Jenkins"
  }

  user_data = file("${path.module}/user-data.sh")
}

resource "aws_instance" "spm-webserver" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.security-grp.id]
  key_name                    = "shrey-web1"
  associate_public_ip_address = true

  tags = {
    Name = "SPM-Webserver"
  }

  user_data = file("${path.module}/user-data.sh")
}
