# Calculadora Linux

> Aplicação de linha de comando desenvolvida em **Bash** para realizar operações matemáticas básicas no terminal Linux.

![Bash](https://img.shields.io/badge/Linguagem-Bash-4EAA25?logo=gnubash&logoColor=white)
![Linux](https://img.shields.io/badge/Plataforma-Linux-FCC624?logo=linux&logoColor=black)
![Status](https://img.shields.io/badge/Status-Funcional-2ea44f)

## Sobre o projeto

Este projeto apresenta uma calculadora interativa em Bash, criada para praticar comandos de terminal, variáveis, estruturas condicionais, laços de repetição, funções e validação de dados.

## Funcionalidades

- Soma, subtração, multiplicação e divisão.
- Entrada de números inteiros, negativos e decimais (com ponto).
- Validação das entradas e tratamento de divisão por zero.
- Menu interativo que permite realizar várias operações sem reiniciar o programa.
- Saída formatada com até seis algarismos significativos.

## Requisitos

- Linux com Bash.
- Utilitário `awk` disponível no sistema (presente na maioria das distribuições).

## Como executar

Abra o terminal na pasta do projeto e rode:

```bash
chmod +x calculadora.sh
./calculadora.sh
```

Alternativamente:

```bash
bash calculadora.sh
```

### Exemplo de uso

```text
=== CALCULADORA LINUX ===
1) Somar
2) Subtrair
3) Multiplicar
4) Dividir
0) Sair
Escolha uma opcao: 1
Primeiro numero: 10
Segundo numero: 5
Resultado: 15
```

Para números decimais, utilize ponto: `2.5`, não `2,5`.

## Estrutura do repositório

| Arquivo | Descrição |
| --- | --- |
| `calculadora.sh` | Código-fonte da calculadora |
| `comandos.txt` | Comandos utilizados para executar o projeto |
| `README.md` | Documentação e instruções |
| Arquivos PDF | Material de referência da atividade |

## Conceitos praticados

Bash scripting, entrada e saída no terminal, funções, `case`, `while`, expressões regulares e tratamento de erros.

## Autor

**luiz-analytics** — [Perfil no GitHub](https://github.com/luiz-analytics)

---

Projeto educacional desenvolvido para prática de Linux e programação em Bash.
