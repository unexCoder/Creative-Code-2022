int n;
float [] angles;
int [] [] pos;
int [] diams;
float [] vels;

void setup() {
  smooth();
  noCursor();
  size(500,500);
  n = 25;
  pos = new int [n] [2];
  diams = new int [n];
  angles = new float [n];
  vels = new float [n];
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
