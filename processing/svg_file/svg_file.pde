  

PShape s;

void setup() {
  smooth();
  size(500, 500);
  s = loadShape("I40.svg");
}

void draw() {
  //s.resetMatrix();
  //s.scale(0.25);
  s.scale(0.999);
  shape(s, random(width), random(height));
}

