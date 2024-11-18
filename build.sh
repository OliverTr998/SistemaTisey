#!/bin/bash

# Actualiza los paquetes e instala dependencias necesarias
apt-get update && apt-get install -y curl apt-transport-https gnupg unixodbc-dev

# Agrega la clave y el repositorio de Microsoft
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

# Instala el controlador ODBC 17 para SQL Server
apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql17

# Limpia los paquetes para reducir el tamaño de la imagen
apt-get clean
rm -rf /var/lib/apt/lists/*

pip install -r requirements.txt

python manage.py migrate