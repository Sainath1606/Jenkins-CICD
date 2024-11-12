resource "aws_instance" "MSSEC2Instance" {
    count = "{var.instances}"
    ami = "{var.ami}"
    instance_type = "{var.instanceType}"
    security_groups = ["launch-wizard-9"]
    key_name = "devopsmss"
    tags = {
       Name = "Terraform Server by TF" 
    }
}