#!/bin/bash

# Instalar dependencias necesarias
apt-get update
apt-get install -y curl apt-transport-https ca-certificates gnupg

# Agregar la clave pública de Microsoft
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

# Agregar el repositorio de Microsoft para ODBC Driver 17
curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

# Actualizar el índice de paquetes
apt-get update

# Instalar ODBC Driver 17
apt-get install -y msodbcsql17
