provider "yandex" {
  token     = var.YC_TOKEN
  cloud_id  = "b1ga4odn0i44r8qgorf8"
  folder_id = "b1gc33n2kn0qsjgcmia2"
  zone      = "ru-central1-a"
}


variable "YC_TOKEN" {
  type = string
}

resource "yandex_compute_instance" "node-yc1" {
  name     = "node-yc1"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd82re2tpfl4chaupeuf"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_vpc_network" "network-1" {
  name = "network1"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}