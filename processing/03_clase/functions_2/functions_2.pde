void setup() {
  size(400, 400);
  background(0);
  stroke(255, 0, 255);
  dibujo(width/2,height/2);
  stroke(0, 255, 255);
  dibujo(width/3,height/2);
  stroke(255, 255, 0);
  dibujo(width/2,height/3);
}

void dibujo(int x, int y) {
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
