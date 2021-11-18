
PImage bg;
PImage cb;
void setup() {
  size(600, 600);
  bg = loadImage("moonwalk.jpg");
  cb = loadImage("http://eneiceo12.files.wordpress.com/2011/05/orquc3addea.jpg?w=288&h=300");
}

void draw() {
  //background(0);
  fill(0,30);
  rect(0,0,width,height);
  image(cb,random(width)-100,random(height)-100,random(width),random(height));
}
