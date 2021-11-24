

void setup() {
  frameRate(5);
  size(600,600);
  smooth();
  background(0);
  rectMode(CENTER);
}

int maxRects = 10;

void draw() {
  noFill();
  background(0);
  stroke(255);
  int lado = (int)random(width/20);
  for (int i = 0; i < maxRects; i++) {
    strokeWeight(random(7));
    rect(width/2,height/2,lado, lado);
    lado = lado + (int) random(width/3);
  } 
}
