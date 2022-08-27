#!/bin/bash

echo "Criando diretorios..."

mkdir /publico /adm /ven /sec

echo "Alterando Permissionamento..."

chmod 770 /adm /ven /sec 
chmod 777 /publico

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Alterando Configurações de grupos..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Criando usuarios..."

useradd carlos -m -c "Carlos Bavaro" -s /bin/bash -G GRP_ADM -p $(openssl passwd 0000)
passwd carlos -e
useradd maria -m -c "Maria Lima" -s /bin/bash -G GRP_ADM -p $(openssl passwd 0000)
passwd maria -e
useradd joao -m -c "João Laurentino" -s /bin/bash -G GRP_ADM -p $(openssl passwd 0000)
passwd joao -e
useradd debora -m -c "Debora Alves" -s /bin/bash -G GRP_VEN -p $(openssl passwd 0000)
passwd debora -e
useradd sebastiana -m -c "Sebastiana Carvalho" -s /bin/bash -G GRP_VEN -p $(openssl passwd 0000)
passwd sebastiana -e
useradd roberto -m -c "Roberto Gonzales" -s /bin/bash -G GRP_VEN -p $(openssl passwd 0000)
passwd roberto -e
useradd josefina -m -c "Josfian Filipina" -s /bin/bash -G GRP_SEC  -p $(openssl passwd 0000)
passwd josefina -e
useradd amanda -m -c "Amanda Cristina" -s /bin/bash -G GRP_SEC -p $(openssl passwd 0000)
passwd amanda -e
useradd rogerio -m -c "Rogerio Cavalcante" -s /bin/bash -G GRP_SEC -p $(openssl passwd 0000)
passwd rogerio -e

echo "Finalizando Scripty...!"
