terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Pull docker image
resource "docker_image" "app_image" {
  name         = var.image_name
  keep_locally = false
}

# Run docker container
resource "docker_container" "app_container" {
  name  = var.container_name
  image = docker_image.app_image.name

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
