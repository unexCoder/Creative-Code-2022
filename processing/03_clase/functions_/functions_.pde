// funciones

void setup() {
  size(1200, 800);
  background(0);
  strokeWeight(0.2);
  for (int i = 0; i < 40; i++) {
    stroke(10*i, 255/(i+1), 255);
    dibujo(random(width), random(height));
  }
}

void dibujo(float x, float y) {
  pushMatrix(); // push estado anterior
  translate(x, y);
  for (int i = 0; i < 100; i++) {
    float a = random(-width/2, width/2);
    float b = random(-height/2, height/2);
    line(0, 0, a, -b);
    line(0, 0, -a, b);
  }
  popMatrix();  // reset al estado anterior
}
