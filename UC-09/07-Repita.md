# Estrutura de Repetição - Repita

> **Data:** 17 de agosto de 2026

Uma nova estrutura além do "enquanto".

---

## Repita

A estrutura `REPITA` é utilizada para repetir um bloco de comandos enquanto uma determinada condição não for atendida.

Diferente do `ENQUANTO`, o `REPITA` possui o teste lógico **no final** da estrutura.

Por isso, o bloco de comandos é executado **pelo menos uma vez**, antes que a condição seja verificada.

---

## Atividades feitas no VisualG

### Contagem de 0 a 10
```
Algoritmo "REPITA 0 A 10"
// Escreva um algoritmo que conte de 0 até 10:
// usando a estrutura de repetição REPITA


Var
   cont: inteiro


Inicio
      cont <- 0

      REPITA
            EscrevaL(cont)
            cont <- cont + 1

      ATE (cont > 10)

      EscrevaL()
      EscrevaL("Fim da contagem!")


Fimalgoritmo
```

### Tabuada
```
Algoritmo "Tabuada"
// Tabuada


Var
   numero, cont, resultado: inteiro
   resposta: caractere


Inicio
      REPITA
      cont <- 1
      
      Escreva("De qual numero você quer ver a tabuada: ")
      Leia(numero)
      
      REPITA
      resultado <- cont * numero

      EscrevaL(numero," x",cont," =",resultado)

      cont <- cont + 1
      
      ATE(cont > 10)
      
      Escreva("Deseja continuar [SIM / NÃO]: ")
      Leia(resposta)
      
      LIMPATELA
      ATE(resposta = "NÃO")


Fimalgoritmo
```

### Super Contador
```
Algoritmo "SUPER CONTADOR"
// Super contador
// Contar de 0 a 10 e de 10 a 0


Var
   cont, opcao: inteiro


Inicio
      REPITA
            EscrevaL("Menu")
            EscrevaL("[1] Contar de 0 a 10")
            EscrevaL("[2] Contar de 10 a 0")
            EscrevaL("[3] Sair")
            EscrevaL()
            Leia(opcao)
            
            ESCOLHA opcao
                    CASO 1
                         cont <- 0
                         REPITA
                               EscrevaL(cont)
                               cont <- cont + 1
                         ATE(cont > 10)
                    CASO 2
                         cont <- 10
                         REPITA
                               EscrevaL(cont)
                               cont <- cont - 1
                         ATE(cont < 0)
                    CASO 3
                         EscrevaL("Saindo...")
                    OUTROCASO
                         EscrevaL("Invalido!")
            FIMESCOLHA
      ATE(opcao = 3)


Fimalgoritmo
```

### Fatorial
```
Algoritmo "FATORIAL"
// Fatorial!


Var
   cont, numero, fatorial: inteiro
   resposta: caractere


Inicio
      EscrevaL("Fatorial")
      EscrevaL()
      
      REPITA
            Escreva("Digite um número: ")
            Leia(numero)
            
            cont <- numero
            fatorial <- 1
            
            REPITA
                  fatorial <- fatorial * cont
                  cont <- cont - 1
            ATE(cont < 1)
            
            EscrevaL("O fatorial é",fatorial)
            
            Escreva("Quer continuar: [s/n] ")
            Leia(resposta)
      ATE(resposta = "n")


Fimalgoritmo
```
