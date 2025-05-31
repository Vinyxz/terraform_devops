# Use a imagem base do Python
FROM python:3.9-slim

# Instalar o Terraform
RUN apt-get update && apt-get install -y wget unzip \
    && wget https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_linux_amd64.zip \
    && unzip terraform_1.5.0_linux_amd64.zip \
    && mv terraform /usr/local/bin/ \
    && rm terraform_1.5.0_linux_amd64.zip

# Defina o diretório de trabalho
WORKDIR /app

# Copie o código da aplicação
COPY ./app /app

# Instale dependências
RUN pip install -r requirements.txt

# Expor a porta da aplicação
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]
