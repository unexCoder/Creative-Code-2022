// arrays
// tracking de numeros aleatorios

float [] randNumbers;

void setup () {
  float randN = random(20);  
  //  println(randN);

  // declaracion de un array (arreglo)
  // declaro que voy a alojar 100 valores
  randNumbers = new float [5];

  // un array es un tipo especial de OBJETO
  //float [] randNumbers = new float [100];

  // INICIALIZACION
  // acceso secuencial
  for (int i = 0; i < randNumbers.length; i++) {
    // acceso a cada slot del array
    randNumbers[i] = random(800);
  }
  println(randNumbers);

  // acceso a los valores
  //  println(randNumbers[0]);        
  //randNumbers[0] = 1.0;        

  size(800, 800);
  strokeWeight(0.2);
  background(0);
  stroke(255);

  for (int i = 0; i < 1000; i++) {
    float x1 = randNumbers[(int)random(randNumbers.length)];
    float y1 = randNumbers[(int)random(randNumbers.length)];
    float x2 = randNumbers[(int)random(randNumbers.length)];
    float y2 = randNumbers[(int)random(randNumbers.length)];

    line(x1,y1,x2,y2);
  }
}
