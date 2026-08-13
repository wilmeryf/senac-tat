# Estrutura Múltipla Escolha - Caso

> **Data:** 12 de agosto de 2026

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
