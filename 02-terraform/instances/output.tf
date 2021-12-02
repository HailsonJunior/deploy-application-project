output "public_ip_manager" {
  value       = aws_instance.manager.private_ip
}
