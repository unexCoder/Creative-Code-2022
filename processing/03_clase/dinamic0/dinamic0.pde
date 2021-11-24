// VARIABLES GLOBALES
int n_Strars = 10;
int n_Arms = 500;
float trazo = 0.1;

// SETUP
void setup() {
  size(800, 800);
  smooth();
  background(255);
}

// MAIN LOOP
void draw() {
  background(255); // borra pantalla previa
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
}

