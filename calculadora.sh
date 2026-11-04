#!/usr/bin/env bash

# Calculadora interativa com operacoes aritmeticas basicas.
set -u

validar_numero() {
  [[ $1 =~ ^-?[0-9]+([.][0-9]+)?$ ]]
}

calcular() {
  local operacao=$1 primeiro=$2 segundo=$3
  awk -v a="$primeiro" -v b="$segundo" -v op="$operacao" 'BEGIN {
    if (op == "+") r = a + b
    else if (op == "-") r = a - b
    else if (op == "*") r = a * b
    else if (op == "/") {
      if (b == 0) { print "Erro: divisao por zero."; exit 1 }
      r = a / b
    }
    printf "Resultado: %.6g\n", r
  }'
}

while true; do
  printf '\n=== CALCULADORA LINUX ===\n'
  printf '1) Somar\n2) Subtrair\n3) Multiplicar\n4) Dividir\n0) Sair\n'
  read -r -p 'Escolha uma opcao: ' opcao || break
  case $opcao in
    0) echo 'Ate logo!'; break ;;
    1) operador='+' ;;
    2) operador='-' ;;
    3) operador='*' ;;
    4) operador='/' ;;
    *) echo 'Opcao invalida. Tente novamente.'; continue ;;
  esac
  read -r -p 'Primeiro numero: ' primeiro || break
  read -r -p 'Segundo numero: ' segundo || break
  if ! validar_numero "$primeiro" || ! validar_numero "$segundo"; then
    echo 'Erro: informe numeros validos (ex.: -2, 3.5).'
    continue
  fi
  calcular "$operador" "$primeiro" "$segundo"
done
