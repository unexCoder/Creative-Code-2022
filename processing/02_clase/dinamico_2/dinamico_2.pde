float y;

void setup() {
  size(400,400);
  stroke(255);
}

void draw() {
  background(0);
  y = random(height);
  line(0,y, width ,y);
  line(random(width),random(height),random(width),random(height));
}
