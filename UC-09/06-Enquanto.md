# Estrutura de Repetição - Enquanto

> **Data:** 14 e 17 de agosto de 2026

Loop de uma condição.

---

## Enquanto

Essa estrutura permite repetir um conjunto de comandos enquanto uma determinada condição for verdadeira. A repetição é controlada por uma condição.

---

## Atividades feitas no VisualG

### Contagem de 0 a 10
```
Algoritmo "ENQUANTO 0 A 10"
// Escreva um algoritmo que conte de 0 até 10:
// usando a estrutura de repetição ENQUANTO


Var
   cont: inteiro


Inicio
      cont <- 0

      ENQUANTO cont <= 10 FACA
      
      EscrevaL(cont)
      cont <- cont + 1
      
      FIMENQUANTO
      
      EscrevaL()
      EscrevaL("Fim da contagem!")


Fimalgoritmo
```

### Contagem de 20 a 0
```
Algoritmo "ENQUANTO 20 A 0"
// Escreva um algoritmo que conte de 20 até 0:
// usando a estrutura de repetição ENQUANTO


Var
   cont: inteiro


Inicio
      cont <- 20

      ENQUANTO cont >= 0 FACA

      EscrevaL(cont)
      cont <- cont - 2

      FIMENQUANTO

      EscrevaL()
      EscrevaL("Fim da contagem!")


Fimalgoritmo
```

### Usuário pede
```
Algoritmo "ENQUANTO USUÁRIO"
// Escreva um algoritmo que conte até que o usuário mande parar:
// usando a estrutura de repetição ENQUANTO


Var
   cont, valor: inteiro


Inicio
      Escreva("Contar até: ")
      Leia(valor)

      cont <- 1

      ENQUANTO cont <= valor FACA

      EscrevaL(cont)
      cont <- cont + 1

      FIMENQUANTO

      EscrevaL()
      EscrevaL("Fim da contagem!")


Fimalgoritmo
```

### Tabuada
```
Algoritmo "Tabuada"
// Faça um algoritmo que faça o seguinte:
// O usuário digita um número
// O algoritmo calcula a tabuada deste número e imprime na tela


Var
   numero, cont, resultado: inteiro


Inicio
      cont <- 1

      Escreva("Digite um número: ")
      Leia(numero)
      EscrevaL()
      
      EscrevaL("A tabuada do",numero," é...")
      EscrevaL()
      
      ENQUANTO cont <= 10 FACA
      resultado <- numero * cont

      EscrevaL(numero," x",cont," =",resultado)

      cont <- cont + 1
      FIMENQUANTO


Fimalgoritmo
```

### Soma e Maior
```
Algoritmo "Soma e Maior"
// Escreva um algoritmo que ler 5 números.
// Imprimir a soma e qual o maior número digitado.



Var
   numero, cont, soma, maior: inteiro


Inicio
      cont <- 1
      soma <- 0

      ENQUANTO cont <= 5 FACA

      Escreva("Digite um número: ")
      Leia(numero)

      soma <- soma + numero

      SE (cont = 1) OU (numero > maior) ENTAO
         maior <- numero
      FIMSE
      
      cont <- cont + 1

      FIMENQUANTO

      EscrevaL()
      EscrevaL("A soma dos valores é",soma)
      EscrevaL("O maior valor entre eles é",maior)


Fimalgoritmo
```

### Soma, quantidade e média de números
```
Algoritmo "Soma, quantidade e média de números"
// Soma de números até o usuário parar
//
// Faça um algoritmo que permita ao usuário digitar vários números.
//
// Depois de cada número, pergunte:
// Deseja continuar?
// 1 – Sim
// 2 – Não
//
// Enquanto o usuário escolher 1, o programa deverá continuar solicitando números.
//
// Quando escolher 2, o programa deverá parar e informar:
// a soma de todos os números digitados;
// a quantidade de números digitados;
// a média dos números digitados.


Var
   numero, opcao, soma, quantidade: inteiro
   media: real


Inicio
      soma <- 0
      opcao <- 1

      ENQUANTO opcao = 1 FACA
      
      Escreva("Digite um número: ")
      Leia(numero)
      EscrevaL()
      
      soma <- soma + numero
      quantidade <- quantidade + 1
      media <- soma / quantidade
      
      EscrevaL("Deseja continuar?")
      EscrevaL("[1] SIM")
      EscrevaL("[2] NÃO")
      Leia(opcao)
      LimpaTela
      
      FIMENQUANTO
      
      EscrevaL("A soma de todos os números apresentados é",soma)
      EscrevaL("A quantidade de números apresentados é",quantidade)
      EscrevaL("A média dos números é",media)
      
      
Fimalgoritmo
```
