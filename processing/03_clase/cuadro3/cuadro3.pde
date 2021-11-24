

void setup() {
  frameRate(25);
  size(600,600);
  smooth();
  background(0);
  rectMode(CENTER);
}

int maxRects = 10;

void draw() {
  //noFill();
  //background(0);
  fill(0,mouseY/6);
  rect(width/2,height/2,width,height);
  stroke(255);
  int lado = (int)random(width/20);
  for (int i = 0; i < maxRects; i++) {
    noFill();
    strokeWeight(random(7));
    rect(width/2,height/2,lado, lado);
    lado = lado + (int) random(width/3);
    lado = lado % width;
  } 
  maxRects = mouseX/10;
}
