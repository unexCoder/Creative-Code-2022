size(400,400,P3D);
smooth();
background(255);
translate(width/2,height/2,0);

for (int i = 0; i < 200; i++) {
  float x = random(-width/2,width/2);
  float y = random(-height/2,height/2);
  float z = random(-height/2,height/2);
  line(0,0,z,x,y,z);
  line(0,0,z,-x,-y,-z);
}
