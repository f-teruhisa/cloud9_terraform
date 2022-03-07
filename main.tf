resource "aws_cloud9_environment_ec2" "cloud9_example" {
  description                 = "CLoud9 instance configuration"
  instance_type               = "t2.micro"
  name                        = "cloud9-example"
  automatic_stop_time_minutes = 30
}

data "aws_instance" "cloud9_instance" {
  filter {
    name = "tag:aws:cloud9:environment"
    values = [
      aws_cloud9_environment_ec2.cloud9_example.id
    ]
  }
}
