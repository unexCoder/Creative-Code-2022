void setup() {
  size(500,500);
}

void draw() {
  background(0);
  stroke(255);
  float y = random(height);
  line(0,y, width ,y);
  line(random(width),random(height),random(width),random(height));
}
