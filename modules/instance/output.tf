output "instance_ip" {
  value = aws_instance.test-3.*.public_ip
}