// ARRAYS

// N FIGURAS EN ROTACION 

int n; // NUMERO DE FIGURAS 
float [] angles; // ARRAY DE ANGULOS 
int [] [] pos;   // ARRAY DE 2 DIMENSIONES PARA COORDENADAS
int [] diams;    // ARRAY DE DIAMETROS
float [] vels;   // ARRAY DE VELOCIDADES

void setup() {
  smooth();
  noCursor();
  size(500,500);
  
  n = 25;
  pos = new int [n] [2]; // INICIO DE ARRAYS
  diams = new int [n];
  angles = new float [n];
  vels = new float [n];
  // SE UTILIZA UN LOOP PARA ITERAR SOBRE UNO O MUCHOS ARRAYS
  // AL INICIALIZAR SUS VALORES
  for (int i = 0; i < n; i++) {
    int x = (int)random(width/4);
    int y = (int)random(height/4);
    int d = (int)random(20,100);
    float angle = random(TWO_PI);
    float vel = random(0.001,0.05);
    pos [i] [0] = x; pos [i] [1] = y;
    diams [i] = d;
    angles [i] = angle;
    vels [i] = vel;   
  }
}

void draw() {
  background(0);
  //fill(255,120);
  //rect(0,0,width,height);
  fill(#DEB307,120);
  // TAMBIEN SE UTILIZA UN LOOP PARA ACCEDER A LOS VALORES DE UN 
  // ARRAY EN FORMA SECUENCIAL 
  for (int i = 0; i < n; i++) {
    pushMatrix();
    translate(width/2,height/2);
    //translate(mouseX,mouseY);
    rotate(angles[i]);
    ellipse(pos [i] [0],pos [i] [1],diams [i],diams [i]);
    popMatrix();
    angles [i] += vels [i];
  }
}

void keyPressed() {
  for (int i = 0; i < n; i++) {
    int x = (int)random(width/4);
    int y = (int)random(height/4);
    int d = (int)random(20,100);
    float angle = random(TWO_PI);
    float vel = random(0.001,0.05);
    pos [i] [0] = x; pos [i] [1] = y;
    diams [i] = d;
    angles [i] = angle;
    vels [i] = vel;
  }
}
