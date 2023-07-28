Aguyon

[![Twitter](https://img.shields.io/badge/Twitter-aguyonp-blue)](https://twitter.com/aguyonp)

[![Website](https://img.shields.io/badge/Website-aguyonp-orange)](https://aguyon.net)

# Vagrant deploye GLPI instance on virtualbox
![Résultat de recherche d'images pour "vagrant"](https://www.morot.fr/wp-content/uploads/2019/01/vagrant-logo.png)

This project makes it possible to deploy a virtualbox **Debian 10** virtual machine with a **GLPI** instance.
The project uses **docker** and **docker-compose** technologies.

## Prerequisite
Install:

 - Virtualbox  [Downloads link](https://www.virtualbox.org/wiki/Downloads)
 - Vagrant [Downloads link](https://www.vagrantup.com/downloads.html)

## Deploying the project

 1. Download archive on github
 2. Open CMD as administrator
 3. Go to "vagrant file" location
 4. Make `# vagrant up`

![enter image description here](https://i.imgur.com/sidYJfl.png)

Vagrant then asks you how many network cards you want.
Only one in the example
![enter image description here](https://i.imgur.com/tR6NHhQ.png)

Let Vagrant configure the VM. Once finished, Vagrant will display a message containing the connection information to GLPI (This may take some time depending on your connection speed).
![enter image description here](https://i.imgur.com/7Fdh8fu.png)

The password is generated randomly.

## Configuration of GLPI

Go to the web page indicated by Vagrant (http://10.89.1.141) LAN IP

use:
glpi_user: CHANGEME

Select this database:
![enter image description here](https://i.imgur.com/muay8yu.png)

GLPI is now operational (Identifiers: glpi / glpi)
![enter image description here](https://i.imgur.com/49K1HzN.png)


