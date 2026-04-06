# Fundamentos da Programação

> **Data:** 11 de setembro de 2025

---

## Código

```ino
/**
  Fundamentos da programação
  @author Anderson Wilmer
*/

/**
  Variáveis são usadas para armazenar informações temporariamente
  Na linguagem C as variáveis são tipadas
  String - Cadeia de caracteres
  char - 'caractere', 1 único caractere
  int - números inteiros
  float - números não inteiros
  bool - verdadeiro ou falso
  -----------------------------------------------------------------
  Operadores aritméticos:
  * / + -
  (multiplicação, divisão, adição e subtração)
  CUIDADO com a regra de precedência

  Comparadores (usados em estruturas de controle)
  > maior que
  >= maior ou igual a
  < menor que
  <= menor ou igual a
  == comparador de igualdade
  != diferente de

*/

String aluno = "Anderson Wilmer";
char sexo = 'M';
int idade = 18;
float peso = 58.1;
float altura = 1.74;
float litros, imc;
bool bloqueio = false;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600); //iniciar a comunicação serial com o PC
  Serial.println("Academia - Controle de acesso"); //Imprime o texto e quebra de uma linha
  Serial.print("Nome do aluno: ");
  Serial.println(aluno);
  Serial.print("Sexo: ");
  Serial.println(sexo);
  Serial.print("Idade: ");
  Serial.println(idade);
  Serial.print("Peso: ");
  Serial.println(peso);
  Serial.print("Altura: ");
  Serial.println(altura);
  imc = peso / (altura * altura);
  litros = peso * 0.35 / 1000;
  Serial.print("IMC: ");
  Serial.println(imc);
  Serial.print("Recomendado beber: ");
  Serial.print(litros);
  Serial.println(" litros de água por dia");
  Serial.print("Bloqueio de catraca: ");
  Serial.print(bloqueio);

}

void loop() {
  // put your main code here, to run repeatedly:

}
```

---

Está atividade não foi necessário uma protoboard e nenhum componente, apenas o arduino.
