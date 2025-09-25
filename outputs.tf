output "container_id" {
  description = "ID of the created container"
  value       = docker_container.app_container.id
}

output "container_name" {
  description = "Name of the created container"
  value       = docker_container.app_container.name
}

output "app_url" {
  description = "URL to access the app"
  value       = "http://localhost:${var.external_port}"
}
