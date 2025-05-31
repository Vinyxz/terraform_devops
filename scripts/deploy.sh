#!/bin/bash
echo "Iniciando o deploy da aplicação..."
terraform init
terraform apply -auto-approve
docker-compose up --build -d
echo "Deploy concluído!"
