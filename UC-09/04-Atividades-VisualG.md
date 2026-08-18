# Atividades feitas no VisualG

> **Data:** 10 de agosto de 2026

Mais atividades no VisualG, agora mais voltado para a estrutura de condição.

---

## Atividades efetuadas

### Salário Reajustado por Setor

```
Algoritmo "Salário reajustado"
// Faça um algoritmo que aplique cada setor o respectivo
// acréscimo:
// Informática   -> 10%
// Administração -> 8%
// Marketing     -> 6%
// Contabilidade -> 5%
// Imprima o nome do funcionário, setor e o salário reajustado.


Var
   nome: caractere
   setor: inteiro
   salario, reajuste: real


Inicio
      Escreva("Nome do funcionário: ")
      Leia(nome)
      Escreva("Salário do funcionário: ")
      Leia(salario)
      
      EscrevaL()
      EscrevaL("Setor do funcionário: ")
      EscrevaL("[1] Informática")
      EscrevaL("[2] Administração")
      EscrevaL("[3] Marketing")
      EscrevaL("[4] Contabilidade")
      Leia(setor)
      
      EscrevaL()
      SE setor = 1 entao
         reajuste <- salario * 1.10
         EscrevaL("Você terá um reajuste de 10%")
         SENAO
              SE setor = 2 entao
                 reajuste <- salario * 1.08
                 EscrevaL("Você terá um reajuste de 8%")
                 SENAO
                      SE setor = 3 entao
                         reajuste <- salario * 1.06
                         EscrevaL("Você terá um reajuste de 6%")
                         SENAO
                              SE setor = 4 entao
                                 reajuste <- salario * 1.05
                                 EscrevaL("Você terá um reajuste de 5%")
                                 SENAO
                                      EscrevaL("Nenhuma das opções")
                              FIMSE
                      FIMSE
              FIMSE
      FIMSE
      
      EscrevaL(nome,", seu salário reajustado é R$",reajuste)



Fimalgoritmo
```

### Salário Líquido com IR e INSS

```
Algoritmo "IR e INSS"
//  
//  
// Faça um algortimo que calcule o  salário liquido de um
// funcionário, considerando os descontos abaixo:
//
// | Faixa salarial | IR  | INSS
// | 0 - 899        | 0%  | 8%
// | 900 - 1799     | 15% | 9%
// | 1800           | 25% | 10%
//
// Imprima nome do funcionário e salário líquido


Var
   nome: caractere
   salario_liquido, salario: real


Inicio
      Escreva("Nome do funcionário: ")
      Leia(nome)
      Escreva("Salário do funcionário: ")
      Leia(salario)

      EscrevaL()
      
      SE salario < 900 entao
         salario_liquido <- salario * 0.92
         EscrevaL("Você recebeu descontos de 0% do IR e 8% do INSS")
         SENAO
              SE (900 <= salario) E (salario < 1800) entao
                 salario_liquido <- salario * 0.85 * 0.91
                 EscrevaL("Você recebeu descontos de 15% do IR e 9% do INSS")
                 SENAO
                      salario_liquido <- salario * 0.75 * 0.90
                      EscrevaL("Você recebeu descontos de 25% do IR e 10% do INSS")
              FIMSE
      FIMSE
      
      EscrevaL()
      EscrevaL(nome,", seu salário liquido é R$",salario_liquido)


Fimalgoritmo
```

### Categoria do Nadador

```
Algoritmo "Categoria do Nadador"
// Faça um algoritmo que receba a idade de um nadador e imprima
// a sua categoria seguindo as regras:
//
// Categoria  | Idade
// Infantil A | 5 a 7 anos
// Infantil B | 8 a 10 anos
// Juvenil A  | 11 a 13 anos
// Juvenil B  | 14 a 17 anos
// Sênior     | Maiores de 18 anos


Var
   categoria: caractere
   idade: inteiro


Inicio
      Escreva("Qual a idade: ")
      Leia(idade)
      EscrevaL()
      
      SE (5 <= idade) E (idade <= 7)  ENTAO
         categoria <- "Infantil A"
         EscrevaL("Sua categoria é a ",categoria)
         SENAO
              SE (8 <= idade) E (idade <= 10) ENTAO
                 categoria <- "Infantil B"
                 EscrevaL("Sua categoria é a ",categoria)
                 SENAO
                      SE (11 <= idade) E (idade <= 13) ENTAO
                         categoria <- "Juvenil A"
                         EscrevaL("Sua categoria é a ",categoria)
                         SENAO
                              SE (14 <= idade) E (idade <= 17) ENTAO
                                 categoria <- "Juvenil B"
                                 EscrevaL("Sua categoria é a ",categoria)
                                 SENAO
                                      SE idade >= 18 ENTAO
                                         categoria <- "Sênior"
                                         EscrevaL("Sua categoria é a ",categoria)
                                         SENAO
                                              Escreval("Você não está em nenhuma categoria")
                                      FIMSE
                              FIMSE
                      FIMSE
              FIMSE
      FIMSE
              

Fimalgoritmo
```
