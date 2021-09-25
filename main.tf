provider "aws" {
  region = "us-east-1"
}

# A resource block declares a resource of a given type ("aws_instance")
# with a given local name ("myec2").
# The name is used to refer to this resource from elsewhere in the same Terraform module,
# but has no significance outside that module's scope.
resource "aws_instance" "myec2" {
  ami           = "ami-5b41123e"
  instance_type = "t2.micro"
}

locals {
  db_password = {
    admin = "password"
  }
}

output "db_password" {
  value     = local.db_password
  sensitive = true
}
