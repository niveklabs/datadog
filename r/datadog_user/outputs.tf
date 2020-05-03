output "id" {
  description = "returns a string"
  value       = datadog_user.this.id
}

output "is_admin" {
  description = "returns a bool"
  value       = datadog_user.this.is_admin
}

output "verified" {
  description = "returns a bool"
  value       = datadog_user.this.verified
}

output "this" {
  value = datadog_user.this
}

