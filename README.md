# DevOps Portfolio

Este é um projeto de portfólio que utiliza várias ferramentas de DevOps, como Terraform, Docker, Docker Compose e Nginx.

## Tecnologias Usadas

- **Terraform** para provisionamento de infraestrutura na AWS
- **Docker** para containerização da aplicação
- **Docker Compose** para orquestração de containers
- **Nginx** como reverse proxy

## Como Rodar Localmente

1. Clone o repositório:
   ```bash
   git clone <repo_url>
   cd devops-portfolio
   ```

2. Crie a infraestrutura com o Terraform:
   ```bash
   terraform init
   terraform apply
   ```

3. Suba os containers com Docker Compose:
   ```bash
   docker-compose up --build
   ```

Acesse a aplicação em [http://localhost](http://localhost).

## Como Funciona

- O Terraform cria a infraestrutura necessária.
- O Docker containeriza a aplicação.
- O Nginx serve como reverse proxy para a aplicação Flask.

## Conclusão

Este projeto demonstra habilidades de automação e integração de ferramentas DevOps para provisionamento, containerização e orquestração de aplicações.
