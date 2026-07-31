# Atividades feitas no VisualG

> **Data:** 30 de julho de 2026

Algumas atividades feitas no VisualG como forma de aprendizado.

---

## Operadores aritméticos

### Cesta básica

```
Algoritmo "Cesta Básica"
// Cesta Básica - Ler o produto, quantidade, preço unitário e fazer
// o cálculo do valor. Aplique reajuste de 2% apenas para valor total


Var
   produto: caractere
   quantidade: inteiro
   preco_unitario, reajuste_final, reajuste, preco_total: real


Inicio
      reajuste <- 2/100

      Escreva("Qual o produto: ")
      Leia(produto)
      Escreva("Qual a quantidade: ")
      Leia(quantidade)
      Escreva("Qual o preço unitário: ")
      Leia(preco_unitario)

      Escreva("Seu produto ",produto)

      reajuste_final <- (quantidade * preco_unitario) * reajuste

      EscrevaL(", teve um reajuste de",reajuste_final)
      
      preco_total <- (quantidade * preco_unitario) + reajuste_final
      
      EscrevaL("O preço total é",preco_total)


Fimalgoritmo
```

### Conversão da idade

```
Algoritmo "Idade da pessoa em..."
// Faça um programa que receba a idade de uma pessoa em anos
// e imprima essa idade em: meses, dias, horas e minutos


Var
   idade, meses, dias, horas, minutos: inteiro


Inicio
      Escreva("Quantos anos você tem: ")
      Leia(idade)
      
      meses <- idade * 12
      
      Escreva("Sua idade em meses é de",meses)
      EscrevaL(" meses")
      
      dias <- idade * 365
      
      Escreva("Sua idade em dias é de",dias)
      EscrevaL(" dias")

      horas <- idade * 8760 //Cálculo de horas é 365 dias vezes 24 horas
      
      Escreva("Sua idade em horas é de",horas)
      EscrevaL(" horas")

      minutos <- idade * 525600 //Cálculo de minutos é 8760 horas vezes 60 minutos
      
      Escreva("Sua idade em minutos é de",minutos)
      EscrevaL(" minutos")
      

Fimalgoritmo
```

### Idade em semanas

```
Algoritmo "Idade em semana"
// Faça um programa que receba o ano de nascimento de uma pessoa
// e o ano atual. Cálcule e imprima:
   // a) A idade dessa pessoa
   // b) Essa idade convertida em semana
   
   
Var
   semana, ano_nascimento, ano_atual, idade, idade_semana: inteiro


Inicio
      semana <- (4*12)

      Escreva("Que ano você nasceu: ")
      Leia(ano_nascimento)
      Escreva("Em qual ano estamos: ")
      Leia(ano_atual)
      Escreva("")
      
      idade <- ano_atual - ano_nascimento
      
      Escreva("Você têm",idade)
      EscrevaL(" anos")
      
      idade_semana <- idade * semana
      
      Escreva("Sua idade em semanas é",idade_semana)
      EscrevaL(" semanas")


Fimalgoritmo
```

### Divisão

```
Algoritmo "Divisão com dois números"
// Faça um programa que receba dois números inteiros, calcule e
// imprima a divisão do primeiro pelo segundo número


Var
   n1, n2: inteiro
   divisao: real


Inicio
      Escreva("Digite o primeiro número: ")
      Leia(n1)
      Escreva("Digite o segundo número: ")
      Leia(n2)
      
      divisao <- n1 / n2
      
      Escreva("A divisão do primeiro pelo segundo número é",divisao)


Fimalgoritmo
```

---

## Entrada e saída de dados

### Cadastro de livro

```
Algoritmo "Inclusão de livro"
// Crie um algoritmo de inclusão de livro numa biblioteca


Var
   livro, autor, editora: caractere


Inicio
      EscrevaL("Quer incluir um livro na biblioteca?")
      Escreva("Digite o nome do livro: ")
      Leia(livro)
      Escreva("Digite o autor: ")
      Leia(autor)
      Escreva("Digite a editora: ")
      Leia(editora)
      Escreva("Agora seu livro ",livro)
      Escreva(" do autor ",autor)
      Escreva(" da editora ",editora)
      Escreva(" está na nossa biblioteca!")


Fimalgoritmo
```
