size(300,600);
background(0);
int gridX = width/10;
int gridY = height/30;
stroke(255);
for (int i = 0; i < width; i += gridX) {
  for (int k = 0; k < height; k += gridY) {
    float n = random(1);
    if (n < 0.2) {
      line(i+2, k+2, i+gridX-2, k+gridY-2);
    } else {
      line(i+gridX-2, k+2, i+2, k+gridY-2);
    }
  }
}
