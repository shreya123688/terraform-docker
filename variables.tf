variable "image_name" {
  description = "Docker image to pull"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Name of the docker container"
  type        = string
  default     = "terraform-nginx"
}

variable "internal_port" {
  description = "Port inside the container"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "Port exposed on the host"
  type        = number
  default     = 8080
}
