# Estrutura de Condição

> **Data:** 31 de julho de 2026

Sobre e atividades de condição simples e composta com VisualG.

---

## Estruturas de controle

As estruturas de controle determinam como o algoritmo será executado.

### Estrutura sequencial

As atividades feitas anteriormente (Olá Mundo, Soma, IMC, Cesta Básica...) pertencem à estrutura sequencial.

Os comandos são executados na ordem em que foram escritos, do início ao fim, sem tomar decisões.

Exemplo:
```
Lê dois números

↓

Soma os números

↓

Mostra o resultado

↓

Fim
```

---

## Condicional Simples

Executa um bloco de comandos somente quando uma condição é verdadeira.

Exemplo:  
```
Algoritmo "Condicional_PAR"
// Informe um número e verifique se ele é par


Var
   num: inteiro


Inicio
      Escreva("Informe um número inteiro: ")
      Leia(num)
      
      SE num % 2 = 0 entao
         EscrevaL("O número é par!")
      FIMSE


Fimalgoritmo
```

---

## Condicional Composta

Permite dois caminhos de execução: um quando a condição é verdadeira e outro quando é falsa.

```
Algoritmo "Condicional_PAR"
// Informe um número e verifique se ele é par ou impar


Var
   num: inteiro


Inicio
      Escreva("Informe um número inteiro: ")
      Leia(num)
      
      SE num % 2 = 0 entao
         EscrevaL("O número é par!")
         
         SENAO
              EscrevaL("O número é impar!")
      FIMSE


Fimalgoritmo
```

---

## Condicional Composta Aninhada

É quando existe um `SE` dentro de outro `SE`, ela é usada quando existem três ou mais possibilidades.

Exemplo:
```
Algoritmo "Boletim"
// Faça um programa que receba 4 notas de um estudante,
// calcule e imprima a média aritmética das notas
// e a mensagens de APROVADO para média superior
// ou igual a 7,0 ou a mensagem RECUPERAÇÃO para média
// entre inferior a 7 e maior ou igual a 5 ou a mensagem
// de REPROVADO para média inferior a 5,0


Var
   nota1, nota2, nota3, nota4, media: real


Inicio
      Escreva("= ESCOLA =")
      EscrevaL()
      
      Escreva("1ª nota do estudante: ")
      Leia(nota1)

      Escreva("2ª nota do estudante: ")
      Leia(nota2)

      Escreva("3ª nota do estudante: ")
      Leia(nota3)

      Escreva("4ª nota do estudante: ")
      Leia(nota4)
      
      EscrevaL("")
      
      media <- (nota1 + nota2 + nota3 + nota4) / 4

      SE media >= 7 entao
         EscrevaL("A média do estudante é",media)
         Escreva("APROVADO")
      SENAO
           SE (media >= 5) E (media < 7) entao
              EscrevaL("A média do estudante é",media)
              Escreva("RECUPERAÇÃO")
           SENAO
                EscrevaL("A média do estudante é",media)
                Escreva("REPROVADO")
           FIMSE
      FIMSE


Fimalgoritmo
```

---

## Atividades feitas no VisualG

### Maioridade
```
Algoritmo "MAIORIDADE"
// Faça um programa que receba o ano de nascimento
// da pessoa, o ano atual. Calcule e imprima
// a) Idade dessa pessoa
// b) Se for maior ou igual que 21 apareça a mensagem
// "VOCÊ ATINGIU A MAIORIDADE"


Var
   nascimento, ano_atual, idade: inteiro


Inicio
      Escreva("Em que ano você nasceu: ")
      Leia(nascimento)
      Escreva("Em que ano estamos: ")
      Leia(ano_atual)
      
      EscrevaL("")
      
      idade <- ano_atual - nascimento
      
      SE idade >= 21 entao
         EscrevaL("Você tem",idade," anos")
         Escreva("Você atingiu a maioridade!")
      FIMSE


Fimalgoritmo
```

### Boletim (Condicional Composta)
```
Algoritmo "Boletim"
// Faça um programa que receba 4 notas de um estudante,
// calcule e imprima a média aritmética das notas
// e a mensagens de APROVADO para média superior
// ou igual a 7,0 ou a mensagem de REPROVADO
// para média inferior a 7,0


Var
   nota1, nota2, nota3, nota4, media: real


Inicio
      Escreva("= ESCOLA =")
      EscrevaL()
      
      Escreva("1ª nota do estudante: ")
      Leia(nota1)

      Escreva("2ª nota do estudante: ")
      Leia(nota2)

      Escreva("3ª nota do estudante: ")
      Leia(nota3)

      Escreva("4ª nota do estudante: ")
      Leia(nota4)
      
      EscrevaL("")
      
      media <- (nota1 + nota2 + nota3 + nota4) / 4
      
      SE media >= 7 entao
         EscrevaL("A média do estudante é",media)
         Escreva("APROVADO")
         
         SENAO
              EscrevaL("A média do estudante é",media)
              Escreva("REPROVADO")
      FIMSE


Fimalgoritmo
```

### Viagem
```
Algoritmo "Viagem"
// Estrutura condicional composta aninhada
// Disney, Argentina


Var
   dinheiro: real


Inicio
      Escreva("Quanto dinheiro você têm: ")
      Leia(dinheiro)
      EscrevaL("")
      
      EscrevaL("Seu saldo é R$",dinheiro,", logo...")
      EscrevaL("")
      
      SE (dinheiro >= 10000) entao
         EscrevaL("Vamos para a Disney!")
      SENAO
           SE (dinheiro >= 5000) E (dinheiro < 10000) entao
              EscrevaL("Vamos para a Argentina!")
           SENAO
                EscrevaL("Fica em casa!")
           FIMSE
      FIMSE


Fimalgoritmo
```
