provider "aws" {
    region = "us-east-1"
    access_key = "AASIASNGYRHWOGOXANIRJ"
    secret_key = "tNZ8A98nnIYO8CFsd26PFSaNMaEPzbuIazkkph7m"
    token = "IQoJb3JpZ2luX2VjENr//////////wEaCXVzLWVhc3QtMSJHMEUCIBEkJn6ynZbFZPqoTsEAXygNrqt+b1oxLD5v9R8/ZgFUAiEAr9SsmTMaC7hNpAYUbWOH/rQnSs3mfTg36N8iEfhBPZ4q6wIIchABGgwxNjU4MTAzNTU2MTIiDPl9J/pmpFNL8ZW2iSrIAiD9Pw6QVGMahkUectSWAZruzh/vQlIZLVU4dxawBK3LIE34+Ih/SxwOHpPh0C84wEO8ORuHk1vQMHiHjKFCJKTlA6I3+ytaQYSpcPdUotnRHzw1jsX44hQ9xf4yDH9Ft4bL5s/I5BCLBH7C3EQD87pOvsoxwMRuCsN2hDhJ4xf/yMSx0wcDFWxGilbCIbXOWDdi4otwdSZnEjwHgw2cSY16YJNaa5ldfRCU4qkK4vK6eQAmvsMWAvJuVCisIRLrkNk49Ksvdj1NcKCXzZR0nUkPhSyFb5FQzAEA9WvaLh0OKkrIIPzJvCfC898VAHC16hDG1Lim0GW8NtZQi5MTIwaoyvq44T/oBGd3tTJtiuevJngQSMDMRgwJBuLz79oE6FlE+G2SvmRiTc4ES3oDHrTg+0if1vx26yE4uuv+/ZTIdp8L9fZlp0kwl/HZrAY6pwGHcMSANoEDetRgwPfGTU81K56xSCtNwg2Q2KKxitRenWsb6y1+E+BA+prP9NPWhSn9WtW6QN+ECpH9UP+wzDec5T8Hj8/cDEd4QJJeRBA58mb7Ji/O76n0IkWHuZZM3CCr/Dko+fP+ztcx56rGIo6m+WiT+fx1WIAZNSI9bqa2YQzp6LuBOIbflstYwVmg+01WOQx5AxwdBdZ9grf15gDYZdOM3AcLiQ=="
}

#created new VPC 
resource "aws_vpc" "development-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "Development"
    }
}
# created new Subnet
resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "us-east-1a"
    tags = {
      Name = "Dev-subnet"
    }
}