// FORMA
// DIBUJO EN 2D - PRIMITIVAS
size(600,600);
smooth();

int nColores = 2;
colorMode(RGB,nColores);

background((int)random(nColores),(int)random(nColores),(int)random(nColores));


fill((int)random(nColores),(int)random(nColores),(int)random(nColores));
rect(30, 20, 155, 155);

fill((int)random(nColores),(int)random(nColores),(int)random(nColores));
rect(300, 200, 155, 155, 3, 6, 12, 66);

fill((int)random(nColores),(int)random(nColores),(int)random(nColores));
ellipse(256, 46, 55, 55);

fill((int)random(nColores),(int)random(nColores),(int)random(nColores));
ellipse(256, 460, 55, 155);

stroke((int)random(nColores),(int)random(nColores),(int)random(nColores));
strokeWeight(5);
point(random(width),random(height));
point(random(width),random(height));
point(random(width),random(height));
point(random(width),random(height));

stroke(0);
strokeWeight(1);
line(500,300,500,500);

stroke((int)random(nColores),(int)random(nColores),(int)random(nColores));
strokeWeight(10);
line(550,300,550,500);

stroke((int)random(nColores),(int)random(nColores),(int)random(nColores));
fill((int)random(nColores),(int)random(nColores),(int)random(nColores));  
triangle(100, 400, 150, 450, 120, 300);

strokeWeight(1);
stroke(0);
noFill();
triangle(400, 150, 450, 120, 300,100 );

noStroke();
fill((int)random(255),(int)random(255),(int)random(255));  
triangle(450, 400, 300,400,400, 450);

strokeWeight(2);
stroke(nColores);
arc(400, 50, 50, 50, 0, HALF_PI);
noFill();
arc(400, 50, 60, 60, HALF_PI, PI);
arc(400, 50, 70, 70, PI, PI+QUARTER_PI);
arc(400, 50, 80, 80, PI+QUARTER_PI, TWO_PI);

arc(500, 50, 80, 80, 0, PI+QUARTER_PI, CHORD);
fill(nColores,nColores,0);
arc(500, 150, 80, 80,QUARTER_PI, TWO_PI-QUARTER_PI, PIE);

noFill();
strokeWeight(4);
stroke((int)random(nColores),(int)random(nColores),(int)random(nColores));
quad(438,431,486,420,469,463,430,476);

