account          = "account"
project          = "project"
key_name         = "nombrekeypairjeissonherrera"
private_key_path = "./nombrekeypairjeissonherrera.pem"
vpc_id           = "vpc-00f479057476a2db8"
tags = {
  "tag1" = "valor"
}


ec2_config = {
  instance_1 = {
    role_name     = "nombredelrolacrear-jeissonherrera"
    ami           = "ami-0c1e21d82fe9c9336"
    instance_type = "t3.micro"
    subnet_id     = "subnet-09ac9f21d385834a8"
    policy_arn    = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
    policy_arn1   = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
    tagsec2 = {
      Name     = "tags"
      "a-tag1" = "tags"
    }
    root_block_device = {
      volume_size = 10
      volume_type = "gp3"
      iops        = 3000
    }
  }
}


sg_config = {
  instance_1 = {
    name                 = "ause-sg-cuenta-proyecto-jeissonherrera"
    description          = "Descripcion para grupo de seguridad"
    vpc_id               = "vpc-00f479057476a2db8"
    projectsecuritygroup = "sgproyect-jeissonherrera"
    ingress_rules = [
      { from_port = 3389, to_port = 3389, protocol = "tcp", cidr_blocks = ["10.0.0.0/8"] },
      { from_port = 0, to_port = 65535, protocol = "tcp", cidr_blocks = ["10.215.3.51/32"] }
    ]
  }
} 