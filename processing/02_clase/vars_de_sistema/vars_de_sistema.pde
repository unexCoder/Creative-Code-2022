// variables de sistema
// son variables muy útiles, que YA ESTAN DECLARADAS y que
// podemos utilizar en cualquier momento

void setup() {
  size(200, 200);
  frameRate(30);
  println(displayWidth);
  println(displayHeight);
}

void draw() {
  ellipse(mouseX, mouseY, 20, 20);
  // noCursor();
}

void keyPressed() {
  println(key);
}
// otras variables de sistema son:
// frameRate
// screen.width    displayWidth en Processing 2
// screen.height   displayHeight en Processing 2
// key
// keyCode
// keyPressed
// mousePressed
// mouseButton

