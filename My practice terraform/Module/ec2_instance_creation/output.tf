output "publicIP" {
  value = aws_instance.example1.public_ip
}

output "dnsValue" {
  value = aws_instance.example1.public_dns
}