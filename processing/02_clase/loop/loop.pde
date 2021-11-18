size(400,400);
smooth();
background(255);
translate(width/2,height/2);

for (int i = 0; i < 100; i++) {
  float x = random(-width/2,width/2);
  float y = random(-height/2,height/2);
  line(0,0,x,-y);
  line(0,0,-x,y);
}
