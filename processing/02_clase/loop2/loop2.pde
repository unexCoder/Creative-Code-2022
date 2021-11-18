size(800, 800);
smooth();
background(255);

int n_Strars = 10;
int n_Arms = 100;

for (int j = 0; j < n_Strars; j++) {
   
  pushMatrix();
  translate(random(width), random(height));
  
  for (int i = 0; i < n_Arms; i++) {
    float x = random(-width/2, width/2);
    float y = random(-height/2, height/2);
    line(0, 0, x, -y);
    line(0, 0, -x, y);
  }
  popMatrix();
}


