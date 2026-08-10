# Estudo da Estrutura FOR

> **Data:** 17 de semtebro de 2025

---

## Código

```ino
/**
	Estudo da estrutura for (estrutura de repetição)
	@author Anderson Wilmer

    sintaxe:
    int i = 1 (inicio da laço, obrigatório número inteiro)
    condição (enquanto verdadeira repete o laço)
    incremento ou decremento i++ ou i--
    for (int i = 1; condição; incremento/decremento) {
	//repetição do código enquanto condição verdadeira
    }
*/

void setup() {
  Serial.begin(9600);
  /**
  for(int i=1; i < 11; i++){
    Serial.println(i);
  }
  */
  int valor = 7;
  for(int i = 1; i < 11; i++){
    Serial.print(valor);
    Serial.print(" x ");
    Serial.print(i);
    Serial.print(" = ");
    Serial.println(valor * i);
  }

}

void loop() {

}
```

---

Está atividade não foi necessário uma protoboard e nenhum componente, apenas o arduino.
