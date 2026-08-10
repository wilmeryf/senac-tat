# While | Do while

> **Data:** 18 de setembro de 2025

---

## Código

```ino
/**
  Estudo da estruturas de repetição while | do...while
  @author Anderson Wilmer

  Sintaxe:

  while (condição) {
    //código será repetido enquanto condição verdadeira
  }

  do {
    //código é executado 1 vez independente da condição
    //depois a condição é analisada e o código será repetido
    //enquanto condição verdadeira
  } while (condição)
*/

void setup() {
  Serial.begin(9600);
  //nas estrutura while | do...while não é possível inicializar uma variável como no "for"
  int i = 100; //inicialização (declaração) da variável
  while (i < 10) {
    Serial.print("i = ");
    Serial.println(i);
    i++;
  }

  int j = 100;
  do {
    Serial.print("j = ");
    Serial.println(j);
    j++;
  } while(j < 10);

}

void loop() {

}
```

---

Está atividade não foi necessário uma protoboard e nenhum componente, apenas o arduino.
