void setup () {
  size(500, 500);
  smooth();
  colorMode(HSB);
  background(255);
  //frameRate(1);
}

void draw() { 
  if (frameCount % 3 == 0) {
    stroke(0);
  } else {
    stroke(random(255), 255, 255);
  }
  line(random(width/7,6*width/7),random(height/7,6*height/7),
       random(width/7,6*width/7),random(height/7,6*height/7));
}

