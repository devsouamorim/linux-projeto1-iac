#!/bin/bash

cd /

echo "Criando diretórios..."
mkdir publico adm ven sec
echo "Criado com sucesso:"
ls -ld publico adm ven sec

echo "Criando grupos..."
for g in GRP_ADM GRP_VEN GRP_SEC; do groupadd "$g"; done
echo "Grupos criados:"
getent group GRP_ADM GRP_VEN GRP_SEC

echo "Inserindo Grupos de permissões as pastas criadas"
echo "ADM:"
chown root:GRP_ADM /adm
chmod 770 adm
ls -ld adm
echo "VEN:"
chown root:GRP_VEN /ven
chmod 770 ven
ls -ld ven
echo "ADM:"
chown root:GRP_SEC /sec
chmod 770 sec
ls -ld sec

echo "dando perrmissão total a todos os usuários à pasta publico"
chmod 777 /publico
ls -ld publico

#Definindo a senha como uma variável
SENHA_PADRAO=$(openssl passwd -6 5238)

echo "Add Usuários em seus respectivos grupos:"
useradd carlos -c "Carlos Andrade" -m -s /bin/bash -p "$SENHA_PADRAO" -G GRP_ADM

useradd maria -c " Maria Antonela" -m -s /bin/bash -p "$SENHA_PADRAO" -G GRP_ADM

useradd joao -c "João de Barro" -m -s /bin/bash -p "$SENHA_PADRAO" -G GRP_ADM

useradd debora -c "Debora dos Santos" -m -s /bin/bash -p "$SENHA_PADRAO" -G GRP_VEN

useradd sebastiana -c "Sebastiana de Lima" -m -s /bin/bash -p "$SENHA_PADRAO" -G GRP_VEN

useradd roberto -c "Roberto Queiroz" -m -s /bin/bash -p "$SENHA_PADRAO" -G GRP_VEN

useradd josefina -c "Josefina Marquês" -m -s /bin/bash -p "$SENHA_PADRAO" -G GRP_SEC

useradd amanda -c "Amanda dos Anjos" -m -s /bin/bash -p "$SENHA_PADRAO" -G GRP_SEC

useradd rogerio -c "Rogério Mesquita" -m -s /bin/bash -p "$SENHA_PADRAO" -G GRP_SEC

echo "Executado!"
