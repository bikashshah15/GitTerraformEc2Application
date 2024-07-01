provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami = "ami-01b799c439fd5516a"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-033f4ada26b773fc6"]
  subnet_id              = "subnet-08bf605a14d78c93d"
  tags = {
    Name = "GitTerraformEc2Application"
  }
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install docker -y
              sudo service docker start
              sudo usermod -a -G docker ec2-user
              sudo docker run -d -p 8080:8080 bikashshah15/gitterraformec2application
              EOF

}

output "app_server_public_ip" {
  value = aws_instance.app_server.public_ip
}