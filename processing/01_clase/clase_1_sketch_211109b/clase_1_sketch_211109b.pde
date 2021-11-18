void setup () {
  size(800,800);

}

void draw() {
  background(0);
  
  fill(120);
  rect(150,150,300,200);
  
  fill(180,40,240, map(mouseX,0,width,0,255));
  rect(200,200,300,200);
}
