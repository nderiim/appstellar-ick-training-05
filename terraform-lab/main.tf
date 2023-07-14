data "aws_vpc" "this" {
  tags = {
    Environment = "dev"
  }
}

output "vpc_id" {
    value = data.aws_vpc.this.id
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-nderim"

  tags = {
    Name        = "Ick training"
    Environment = "Dev"
  }
}