// SETUP
size(800, 800);
smooth();
background(255);

// LOOPS ANIDADOS 
// LOOP EXTERNO PARA DIBUJAR LOS TIROS
for (int j = 0; j < 10; j++) {   
  // TRANSFORMADAS 2D                
  pushMatrix();
  translate(random(800), random(800));
  
  // LOOP INTERNO PARA DIBUJAR CADA TIRO
  for (int i = 0; i < 100; i++) {
    float x = random(-width/2, width/2);
    float y = random(-height/2, height/2);
    line(0, 0, x, -y);
    line(0, 0, -x, y);
  }
  popMatrix();
}

