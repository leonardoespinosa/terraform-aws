ami_id = "ami-04902260ca3d33422"
instance_type = "t2.large"
tags = {
    Name = "test-3",
    Environment = "Prod"
}
sg_name = "le-rules"
ingress_rules = [
    {
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
]

egress_rules = [
    {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
]