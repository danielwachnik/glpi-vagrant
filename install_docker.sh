#BASH

echo "Mise a jour des dépots et paquets"
apt update -y ; apt upgrade -y; apt install pwgen git -y

echo "Installation du socket Docker"
apt install docker.io docker-compose -y
