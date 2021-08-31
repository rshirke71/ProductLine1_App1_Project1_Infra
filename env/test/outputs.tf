# Output variable definitions

output "ec2_instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = module.ec2_instances.public_ip
}

output "id" {
  description = "List of IDs of instances"
  value       = module.ec2_instances.*.id
}

output "arn" {
  description = "List of ARNs of instances"
  value       = module.ec2_instances.*.arn
}

output "availability_zone" {
  description = "List of availability zones of instances"
  value       = module.ec2_instances.*.availability_zone
}