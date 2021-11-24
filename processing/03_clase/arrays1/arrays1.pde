// DOS FIGUARAS EN ROTACION
float angle, angle2;
int x,y,d;
int x2,y2,d2;

void setup() {
  size(400,400);
  x = (int)random(width/4);
  y = (int)random(height/4);
  d = (int)random(100);
  x2 = (int)random(width/4);
  y2= (int)random(height/4);
  d2 = (int)random(100);
}

void draw() {
  background(0);
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(angle);
  ellipse(x,y,d,d);
  angle+=0.01;
  popMatrix();
  
  pushMatrix(); 
  translate(width/2,height/2);
  rotate(angle2);
  ellipse(x2,y2,d2,d2);
  angle2+=0.05;
  popMatrix();

}


