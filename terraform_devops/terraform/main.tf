provider "google" {
  project = "ivory-lotus-422617-s5"  # Seu projeto GCP
  region  = "us-central1"             # Região onde você deseja criar a instância
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"  # Nome da instância
  machine_type = "f1-micro"            # Tipo de máquina
  zone         = "us-central1-a"       # Zona onde a instância será criada

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"  # Imagem da instância
    }
  }

  network_interface {
    network = "default"               # Rede que a instância usará
    access_config {}                  # Configuração de acesso à internet
  }
}

# Exibir o IP da instância criada
output "instance_ip" {
  value = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}
