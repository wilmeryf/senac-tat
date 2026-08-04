# Estrutura de Condição

> **Data:** 31 de julho e 03 de agosto de 2026

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

### Salário Corrigido
```
Algoritmo "SALÁRIO CORRIGIDO"
// Incluia NOME e o SALÁRIO de um funcionário. Verifique se
// o salário é menor ou igual a R$ 1.000,00. Caso seja, dê um
// aumento de R$ 200,00, senão apenas R$ 50,00.
// Imprima o NOME e o SALÁRIO CORRIGIDO.


Var
   nome: caractere
   salario, salario_corrigido: real


Inicio
      Escreva("Qual o seu nome: ")
      Leia(nome)
      Escreva("Qual o salário: ")
      Leia(salario)
      EscrevaL("")
      
      SE salario <= 1000 entao
         salario_corrigido <- salario + 200
         
         SENAO
              salario_corrigido <- salario + 50
      FIMSE
      
      EscrevaL("Olá, ",nome)
      Escreva("Seu novo salário é R$ ",salario_corrigido:5:2)


Fimalgoritmo
```

### Divisão com zero
```
Algoritmo "Divisão com zero"
// Faça um programa que receba dois números inteiros, calcule e
// imprima a divisão do primeiro pelo segundo número
// e mostre o erro se colocar o 0.


Var
   n1, n2: inteiro
   divisao: real


Inicio
      Escreva("Digite o primeiro número: ")
      Leia(n1)
      Escreva("Digite o segundo número: ")
      Leia(n2)
      EscrevaL("")
      
      SE n2 <> 0 entao
         divisao <- n1 / n2
         Escreva("A divisão do primeiro pelo segundo número é",divisao)
         SENAO
              Escreva("Não é possível fazer!")
      FIMSE


Fimalgoritmo
```

### Índice de Massa Corporal (Condicional Composta Aninhada)
```
Algoritmo "IMC"
// Solicitar o peso e a altura do usuário e calcular
// o seu Índice de Massa Corporal (IMC)
// Abaixo do 17 = Muito abaixo do peso
// Entre 17 e 18,5 = Abaixo do peso
// De 18,5 a 25 = Peso ideal
// De 25 a 30 = Sobrepeso
// De 30 a 35 = Obesidade
// De 35 a 40 = Obesidade severa
// 40 ou mais = Obesidade mórbida


Var
   peso, altura, imc: real


Inicio
      Escreva("Digite o seu peso: ")
      Leia(peso)
      Escreva("Digite a sua altura: ")
      Leia(altura)

      EscrevaL("")

      imc <-  peso / (altura * altura)

      SE imc < 17 entao
         EscrevaL("Muito abaixo do peso")
         SENAO
              SE (17 <= imc) E (imc < 18.5) entao
                 EscrevaL("Abaixo do peso")
                 SENAO
                      SE (18.5 <= imc) E (imc < 25) entao
                         EscrevaL("Peso ideal")
                         SENAO
                              SE (25 <= imc) E (imc < 30) entao
                                 EscrevaL("Sobrepeso")
                                 SENAO
                                      SE (30 <= imc) E (imc < 35) entao
                                         EscrevaL("Obesidade")
                                         SENAO
                                              SE (35 <= imc) E (imc < 40) entao
                                                 EscrevaL("Obesidade severa")
                                                 SENAO
                                                      EscrevaL("Obesidade mórbida")
                                              FIMSE
                                      FIMSE
                              FIMSE
                      FIMSE
              FIMSE
      FIMSE


      EscrevaL("Seu IMC atual é: ",imc:5:2)


Fimalgoritmo
```
