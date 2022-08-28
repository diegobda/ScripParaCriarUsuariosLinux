#!/bin/bash

echo "Criar diretórios no linux"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criar grupos de users"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criar user"

useradd diego2 -m -s /bin/bash -p $(openssl passwd - crypt senha 123) -G GRP_ADM
useradd maria  -m -s /bin/bash -p $(openssl passwd - crypt senha 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd - crypt senha 123) -G GRP_ADM


useradd carlos -m -s /bin/bash -p $(openssl passwd - crypt senha 123) -G GRP_VEN
useradd debora -m -s /bin/bash -p $(openssl passwd - crypt senha 123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd - crypt senha 123) -G GRP_VEN


useradd amanda -m -s /bin/bash -p $(openssl passwd - crypt senha 123)-G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd - crypt senha 123)-G GRP_SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd - crypt senha 123)-G GRP_SEC

echo "Especificando permissoes dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico #rodas as permissoes 777

echo "FIM"
