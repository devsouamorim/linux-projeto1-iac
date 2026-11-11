#!/bin/bash

echo "Criando  usuários do Sistema"

useradd guest01 -c "Convidado 01" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest01 -e

useradd guest02 -c "Convidado 02" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest02 -e

useradd guest03 -c "Convidado 03" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest03 -e
  
useradd guest04 -c "Convidado 04" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest04 -e

useradd guest05 -c "Convidado 05" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest05 -e

useradd guest06 -c "Convidado 06" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest06 -e

useradd guest07 -c "Convidado 07" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest07 -e 


echo "Finalizado!"
