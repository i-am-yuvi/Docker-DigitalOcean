provider "digitalocean" {
  token = "YOUR_DIGITALOCEAN_API_TOKEN"
}

resource "digitalocean_droplet" "example" {
  name   = "docker-droplet"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  image  = "docker-18-04"  # Docker pre-installed image

  connection {
    type        = "ssh"
    user        = "root"
    private_key = file("~/.ssh/id_rsa")  # Path to your private SSH key
  }
}

