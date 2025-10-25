# Pull Docker image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Create container
resource "docker_container" "nginx_container" {
  name  = "my-nginx"
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8081
  }
}
