# Estrutura Múltipla Escolha - Caso

> **Data:** 12 e 14 de agosto de 2026

Uma nova estrutura a ser utilizada.

---

## Caso

A estrutura Caso é feita através do bloco `ESCOLHA / CASO`. Ela serve para testar o valor de uma única variável e executar um bloco de código específico para cada opção.

- **Múltiplas opções:** Cria um caminho direto (um caso) para cada valor específico.
- **Sem operadores lógicos:** É proibido usar >, <, E ou OU dentro dos casos.
- **Sem faixas de valores:** Não aceita intervalos como `CASO 1 ate 10` ou `CASO >= 5`.
- **Restrição de dados:** Aceita apenas números inteiros ou caracteres (letras/textos).
- **Bloqueio de números reais:** Variáveis com ponto flutuante (como 1.5) quebram a estrutura.

---

## Atividades feitas no VisualG

### Doação
```
Algoritmo "Criança Esperança"
// Criança Esperança


Var
   doar: inteiro
   valor: real


Inicio
      EscrevaL("CRIANÇA ESPERANÇA")
      EscrevaL()
      
      EscrevaL("[1] para doar R$ 15,00")
      EscrevaL("[2] para doar R$ 30,00")
      EscrevaL("[3] para doar R$ 50,00")
      EscrevaL("[4] para doar outro valor")
      EscrevaL("[5] para cancelar")
      EscrevaL()
      
      Escreva("Escolha uma das opções acima: ")
      Leia(doar)
      EscrevaL()
      
      ESCOLHA doar
              CASO 1
                   valor <- 15
              CASO 2
                   valor <- 30
              CASO 3
                   valor <- 50
              CASO 4
                   Escreva("Qual o valor da doação: ")
                   Leia(valor)
              CASO 5
                   valor <- 0
      FIMESCOLHA

      EscrevaL("Sua doação foi de R$",valor)
      EscrevaL("Muito obrigado!")


Fimalgoritmo
```

### Reajuste Salário
```
Algoritmo "Reajuste Salário"
// Faça um algoritmo utilizando CASO que de reajuste de salário
// para os funcionários de acordo com o número de dependentes,
// considerando a tabela abaixo:
//
// Dependentes | Reajustes
// 0           | 5%
// 1, 2, 3     | 10%
// 4, 5, 6     | 15%
// Acima de 6  | 18%
//
// Imprimir o nome do funcionário e o valor do salário com reajuste.


Var
   salario, reajuste: real
   funcionario: caractere
   dependentes: inteiro


Inicio
      Escreva("Qual nome do funcionário: ")
      Leia(funcionario)
      Escreva("Qual o salário: ")
      Leia(salario)
      EscrevaL()
      Escreva("Qual seu número de dependentes: ")
      Leia(dependentes)
      
      ESCOLHA dependentes
             CASO 0
                  reajuste <- salario + (salario * 5/100)
             CASO 1,2,3
                  reajuste <- salario + (salario * 10/100)
             CASO 4,5,6
                  reajuste <- salario + (salario * 15/100)
             OUTROCASO
                  reajuste <- salario + (salario * 18/100)
      FIMESCOLHA
      
      EscrevaL()
      EscrevaL("Caro ",funcionario,", o seu salário com o reajuste é R$",reajuste)


Fimalgoritmo
```

### Calculadora
```
Algoritmo "Calculadora"
// Faça um algortimo que leia dois números e uma opção:
//
// 1 > Somar
// 2 > Subtrair
// 3 > Multiplicar
// 4 > Dividir
//
// Utilize CASO para realizar a operação escolhida e mostrar o
// resultado.


Var
   num1, num2, resultado: real
   acao: inteiro


Inicio
      Escreva("Digite um número: ")
      Leia(num1)
      Escreva("Digite outro número: ")
      Leia(num2)
      
      EscrevaL()
      EscrevaL("Voce quer:")
      EscrevaL("[1] Somar")
      EscrevaL("[2] Subtrair")
      EscrevaL("[3] Multiplicar")
      EscrevaL("[4] Dividir")
      Leia(acao)
      
      ESCOLHA acao
              CASO 1
                   resultado <- num1 + num2
              CASO 2
                   resultado <- num1 - num2
              CASO 3
                   resultado <- num1 * num2
              CASO 4
                   resultado <- num1 / num2
      FIMESCOLHA
      
      EscrevaL()
      EscrevaL("O resultado dessa operação foi",resultado)


Fimalgoritmo
```

### Classificação de notas
```
Algoritmo "Classificação de notas"
// Faça um algortimo que leia uma nota de 0 a 10 e utilize CASO
// para classificar o estudante:
//
// 0 a 4 > "Reprovado"
// 5 a 6 > "Recuperação"
// 7 a 8 > "Aprovado"
// 9 a 10 > "Aprovado com destaque"


Var
   nota: inteiro


Inicio
      Escreva("Qual a nota: ")
      Leia(nota)
      EscrevaL()
      
      ESCOLHA nota
              CASO 0, 1, 2, 3, 4
                   EscrevaL("Reprovado")
              CASO 5, 6
                   EscrevaL("Recuperação")
              CASO 7, 8
                   EscrevaL("Aprovado")
              CASO 9, 10
                   EscrevaL("Aprovado com destaque")
              OUTROCASO
                       EscrevaL("Valor mal inserido.")
      FIMESCOLHA


Fimalgoritmo
```
