// la funbción setup() se ejecuta una sola vez
// se usa para establecer las condiciones iniciales del programa 

void setup() {
  size(500,500);
}

// la función draw() es ejecutada continuamente y evalúa
// en forma contínua todo el bloque de código que contiene

void draw() {
  background(255, 204, 0);
  strokeWeight(2);
  line(random(500),random(500),random(500),random(500));
}

