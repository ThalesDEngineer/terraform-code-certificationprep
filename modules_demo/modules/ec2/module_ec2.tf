resource "aws_instance" "myec2" {
   ami = "ami-01103fb68b3569475"
   instance_type = var.instance_type
   # variables in modules can be overriden by declaring the argument in the tf file
   # if instance_type was declared in the tf file to be executed, it would override the variable
}