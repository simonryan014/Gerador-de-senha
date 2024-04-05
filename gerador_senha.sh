#!/bin/bash

gerar_senha() {
    comprimento=$1
    caracteres="A-Za-zO-9!@#$%¨&*()"
    senha=$(cat /dev/urandom | tr -dc "$caracteres" | fold -w "$comprimento" | head -n 1)
    echo "$senha"
    
}

echo "Digite o comprimento da senha desejada: "
read comprimento_senha
nova_senha=$(gerar_senha "$comprimento_senha")
echo "Sua nova senha é: $nova_senha"
