#!/bin/bash

echo "Iniciando SCRIPT DESAFIO 1 DIO"
echo "---------------------------------------------"
echo " "
echo "Criando Pastas/Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

echo "Delegando Dono/grupos aos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Especificando permissões aos diretórios"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo " "
echo "SECRIPT EXECUTADO"
echo " "
echo "ATENÇÃO: CRIE A SENHA DOS USUÁRIOS ATRAVÉS DO COMANDO "passwd + senha", confome padrão"
