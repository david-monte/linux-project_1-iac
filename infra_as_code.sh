#!/bin/bash

# Creating directories

echo "Criando diretórios..."

mkdir /home/publico
mkdir /home/adm
mkdir /home/ven
mkdir /home/sec

# Creating groups

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Creating users

echo "Criando usuários..."

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM 
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM 
useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

# Adjusting directory permissions

echo "Ajustando permissões de acesso aos diretórios..."

chown root:GRP_ADM /home/adm
chown root:GRP_VEN /home/ven
chown root:GRP_SEC /home/sec

chmod 777 /home/publico
chmod 770 /home/adm
chmod 770 /home/ven
chmod 770 /home/sec 

echo "Processo finalizado!"
