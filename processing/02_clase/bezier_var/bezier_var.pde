int controlX1, controlY1, controlX2, controlY2;

void setup () {
  smooth();
  size(500, 500);
  controlX1 = mouseX; 
  controlY1 = mouseY; 
  controlX2 = 290; 
  controlY2 = 290;
}

void draw() {
  background(255);
  noFill();
  stroke(255, 102, 0);
  line(285, 220, mouseX, mouseY);
  line(controlX2, controlY2, 215, 280);
  stroke(0, 0, 0);
  bezier(285, 220, mouseX, mouseY, controlX2, controlY2, 215, 280);
}

