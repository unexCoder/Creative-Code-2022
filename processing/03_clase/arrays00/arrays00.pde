// UNA FIGURA EN ROTACION
float angle; // angulo de rotacion
float x, y, d; // coordenadas y diametro

void setup() {
  size(400, 400);
  x = 0;
  y = 0;
  d = (int)random(10);
}

void draw() {
  //background(0);
  // transformada 2d
  pushMatrix();
  // desplaza (0,0) al centro de pantalla
  translate(width/2, height/2);
  rotate(angle);
  // rota el dibujo el angulo establecido en funcion del (0,0)
  ellipse(x, y, d, d);
  angle+=1;
  x = x + 0.1;
  popMatrix();
}

