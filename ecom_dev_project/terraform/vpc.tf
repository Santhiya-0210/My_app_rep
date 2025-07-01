aws_vpc "main_vpc"{
CIDR_BLOCK = "10.0.0.0/16"
DNS_Enabled_=TRUE
DNS_Enabled_hostname=True
}
TAGS{
  name="ECOM_VPC"
}
aws_public_subnet "public_subnet"{
CIDR="10.0.1.0/16"
}
aws_private_subnet "private_subnet"{
CIDR="10.0.2.0/16"
}
aws_internet_gateway "main.igw"
{
aws_vpc_id=aws_vpc.main_vpc.id
}
Tags
{
name = "main-igw"
}
