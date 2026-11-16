


import Math

def mostrar_menu():
    print("\n=== CALCULADORA PYTHON ===")
    print("1 - Adição")
    print("2 - Subtração")
    print("3 - Multiplicação")
    print("4 - Divisão")
    print("5 - Potenciação")
    print("6 - Raiz quadrada")
    print("0 - Sair")

while True:
    mostrar_menu()

    try:
        opcao = int(input("Escolha uma opção: "))

        if opcao == 0:
            print("Calculadora encerrada. Até mais!")
            break

        if opcao < 1 or opcao > 6:
            print("Opção inválida.")
            continue

        if opcao == 6:
            numero = float(input("Digite o número: "))

            if numero < 0:
                print("Não existe raiz real de número negativo.")
                continue

            resultado = math.sqrt(numero)

        else:
            numero1 = float(input("Primeiro número: "))
            numero2 = float(input("Segundo número: "))

            if opcao == 1:
                resultado = numero1 + numero2
            elif opcao == 2:
                resultado = numero1 - numero2
            elif opcao == 3:
                resultado = numero1 * numero2
            elif opcao == 4:
                if numero2 == 0:
                    print("Não é possível dividir por zero.")
                    continue
                resultado = numero1 / numero2
            elif opcao == 5:
                resultado = numero1 ** numero2

        print(f"Resultado: {resultado:.2f}")

    except ValueError:
        print("Erro: digite apenas números válidos.")
    except OverflowError:
        print("Erro: resultado muito grande.")
