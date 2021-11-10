void setup () {
  size(800, 800);
  background(0);
  
}

void draw() {
  //background(0);
  
  fill(0,30);
  noStroke();
  rect(0,0,width,height);
   
  stroke(255);
  strokeWeight(noise(frameCount/10.0)*100);
  line(random(width),random(height),random(width),random(height));
}
