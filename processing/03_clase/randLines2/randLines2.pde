
void setup() {
  smooth();
  size(500,500);
  frameRate(25);
}
color c,b;
void draw() {

  b = color(random(255),random(255),random(255));
  c = color(random(255),random(255),random(255));
  //background(0);
  fill(b,3);
  noStroke();
  rect(0,0,width,height);
  stroke(c);
  strokeWeight(random(4,100));
  float y = random(height);
  line(0,y, width ,y);
  line(random(width),random(height),random(width),random(height));
}
