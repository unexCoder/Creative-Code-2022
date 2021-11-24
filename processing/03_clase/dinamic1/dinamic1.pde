// VARIABLES GLOBALES
int n_Strars = 10;
int n_Arms = 500;
float trazo = 0.1;
color back = color(255);
color tint = color(0); 

// SETUP
void setup() {
  size(800, 800);
  smooth();
  background(back);
}

// MAIN LOOP
void draw() {
  background(back); // borra pantalla previa
  stroke(tint); // set color trazo
  // LOOPS ANIDADOS
  for (int j = 0; j < n_Strars; j++) {
    // TRANSFORMADAS 2D 
    pushMatrix();
    translate(random(width), random(height));

    for (int i = 0; i < n_Arms; i++) {
      float x = random(-width/2, width/2);
      float y = random(-height/2, height/2);
      strokeWeight(trazo);
      line(0, 0, x, -y);
      line(0, 0, -x, y);
    }
    popMatrix();
  }
  noLoop();
}

// NTERACTIVIDAD
void keyPressed() {
  if (key == 32) {
    loop();
  } 
  else if (key == CODED) {
    if (keyCode == UP) {
      n_Strars++;
      loop();
    } 
    else if (keyCode == DOWN) {
      n_Strars--;
      loop();
    } 
    else if (keyCode == RIGHT) {
      n_Arms += 10;
      loop();
    } 
    else if (keyCode == LEFT) {
      n_Arms -= 10;
      loop();
    }
  } 
  else if ((key == 't') || (key == 'T')) {
    trazo += 0.2;
    loop();
  } 
  else if ((key == 'r') || (key == 'R')) {
    trazo -= 0.2;
    loop();
  } 
  else if ((key == 'b') || (key == 'B')) {
    back = color(255*(int)random(2), 255*(int)random(2), 255*(int)random(2));
    loop();
  } 
  else if ((key == 'c') || (key == 'C')) {
    // CODIGO PARA CAMBIAR EL COLOR DEL TRAZO
  } 
  else if ((key == 's') || (key == 'S')) {
    saveFrame(frameCount+"_##.jpg");
  }
}

