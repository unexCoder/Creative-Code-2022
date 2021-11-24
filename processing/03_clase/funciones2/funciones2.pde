void setup () {
  size(800, 800);
  smooth();
  background(255);
  estrellas(3,25);
}

void estrellas (int numero, int brazos) {
  for (int j = 0; j < numero; j++) {

    pushMatrix();
    translate(random(width), random(height));

    for (int i = 0; i < brazos; i++) {
      float x = random(-width/2, width/2);
      float y = random(-height/2, height/2);
      line(0, 0, x, -y);
      line(0, 0, -x, y);
    }
    popMatrix();
  }
}



