resource "aws_eip" "eip" {
  domain   = "vpc"

  tags = {
    Name    = var.eip_name
    Project = var.project_name
    IaC     = "Terraform"
  }
}

resource "aws_eip_association" "eip_association" {
  instance_id   = var.eip_instance_id
  allocation_id = aws_eip.eip.id
}