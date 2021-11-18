// init pos
float x = 300;
float y = 20;
// velocidad
float vel_x = 2;
float vel_y = -2;
float diam = 40;

void setup() {
  size(400, 400);
  stroke(#1DED86);
  strokeWeight(7);
}
void draw() {
  background(#EDE71D);
  fill(#ED1DE3);
  ellipse(x, y, diam, diam);
  x = x + vel_x;
  y = y + vel_y;

  if (x > width - diam/2) {
    vel_x = - vel_x;
    println("right");
  }
  if (y > height - diam/2) {

    vel_y = -vel_y;
    println("bottom");
  }
  if (x < diam/2) {
    vel_x = -vel_x;
    println("left");
  }
  if (y < diam/2) {
    vel_y = -vel_y;
    println("top");
  }
}

