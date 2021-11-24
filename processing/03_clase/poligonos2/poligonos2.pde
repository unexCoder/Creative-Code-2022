void setup () {
  smooth();
  size(600,600);
}

void draw() {
  
  fill(0,10);
  rect(0,0,width,height);
  
  fill(random(255),random(255),random(255),100);
  quad(random(width), random(height), 
       random(width), random(height), 
       random(width), random(height),
       random(width) ,random(height));
}
