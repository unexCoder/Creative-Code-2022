void setup() {
  //frameRate(2);
  size(650, 650);
  smooth();
  colorMode(RGB,2);
  background(0);
}

void draw() {
  //fill(0,0.1);
  //ellipse(width/2,height/2,width,height);
  fill(random(2),random(2),random(2));
  rect(random(width),random(height),100,100);
}
