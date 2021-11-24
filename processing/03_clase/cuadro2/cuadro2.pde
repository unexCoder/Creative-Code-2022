

void setup() {
  frameRate(10);
  size(600,600);
  smooth();
  background(0);
  rectMode(CENTER);
}

int maxRects = 6;

void draw() {
  background(0);
  stroke(255);
  int lado = (int)random(width/20);
  for (int i = 0; i < maxRects; i++) {
    strokeWeight(random(7));
    int fill = (int) random(2);
    if (fill > 0) {
    fill(255,30);
  } else {
    noFill();
  }
    rect(width/2,height/2,lado, lado);
    lado = lado + (int) random(width/(maxRects/2));
  } 
}
