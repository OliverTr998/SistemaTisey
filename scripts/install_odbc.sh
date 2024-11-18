#!/bin/bash

echo "Actualizando paquetes del sistema..."
apt-get update && apt-get install -y \
    curl \
    apt-transport-https \
    gnupg \
    unixodbc-dev

echo "Agregando el repositorio de Microsoft..."
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

echo "Instalando el controlador ODBC 17..."
apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql17

echo "Limpieza de paquetes..."
apt-get clean
rm -rf /var/lib/apt/lists/*

echo "El controlador ODBC 17 se instaló correctamente."
