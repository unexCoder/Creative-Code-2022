// UNA FIGURA EN ROTACION
float angle; // angulo de rotacion
int x, y, d; // coordenadas y diametro

void setup() {
  size(400, 400);
  x = (int)random(width/4);
  y = (int)random(height/4);
  d = (int)random(100);
}

void draw() {
  background(0);
  // transformada 2d
  pushMatrix();
  // desplaza (0,0) al centro de pantalla
  translate(width/2, height/2);
  rotate(angle);
  // rota el dibujo el angulo establecido en funcion del (0,0)
  ellipse(x, y, d, d);
  angle+=0.01;
  popMatrix();
}

