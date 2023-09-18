/* lifecycle
The arguments available within a lifecycle block are :
create_before_destroy: New replacement object is created first, and the prior object is destroyed after the replacement is created
prevent_destroy: Terraform to reject with an error any plan that would destroy the infrastructure object associated with the resource
ignore_changes: Ignore certain changes to the live resource that does not match the configuration
replace_triggered_by: Replaces the resource when any of the referenced items change

depends_on
Handle hidden resource or module dependencies that Terraform cannot automatically infer

for_each
Accepts a map or a set of strings and creates an instance for each item in that map or set

provider
Specifies which provider configuration to use for a resource, overriding Terraform's default behavior of selecting one based on the resource type name
*/

provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }

    lifecycle {
        ignore_changes = [tags]
    }
}