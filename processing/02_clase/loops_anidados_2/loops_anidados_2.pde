void setup() {
  size(500,500);
  smooth();
  colorMode(HSB);
}

void draw() {
  for (int x = 0; x < width; x += 10) {
    for (int y = 0; y < width; y += 10) {
      color c = color(random(50,250),255,255);
      fill(c);
      rect(x,y,10,10);
    }
  }
}
