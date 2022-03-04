"""
// FORMA
// DIBUJO EN 2D - PRIMITIVAS
"""

size(600,600);


background(random(255),random(255),random(255));


fill(random(255),random(255),random(255));
rect(30, 20, 155, 155);

fill(random(255),random(255),random(255));
rect(300, 200, 155, 155, 3, 6, 12, 66);

fill(random(255),random(255),random(255));
ellipse(256, 46, 55, 55);

fill(random(255),random(255),random(255));
ellipse(256, 460, 55, 155);

stroke(random(255),random(255),random(255));
strokeWeight(5);
point(random(width),random(height));
point(random(width),random(height));
point(random(width),random(height));
point(random(width),random(height));

stroke(0);
strokeWeight(1);
line(500,300,500,500);

stroke(random(255),random(255),random(255));
strokeWeight(10);
line(550,300,550,500);

stroke(random(255),random(255),random(255));
fill(random(255),random(255),random(255));  
triangle(100, 400, 150, 450, 120, 300);

strokeWeight(1);
stroke(0);
noFill();
triangle(400, 150, 450, 120, 300,100 );

noStroke();
fill(random(255),random(255),random(255));  
triangle(450, 400, 300,400,400, 450);

strokeWeight(2);
stroke(255);
arc(400, 50, 50, 50, 0, HALF_PI);
noFill();
arc(400, 50, 60, 60, HALF_PI, PI);
arc(400, 50, 70, 70, PI, PI+QUARTER_PI);
arc(400, 50, 80, 80, PI+QUARTER_PI, TWO_PI);

arc(500, 50, 80, 80, 0, PI+QUARTER_PI, CHORD);
fill(255,255,0);
arc(500, 150, 80, 80,QUARTER_PI, TWO_PI-QUARTER_PI, PIE);

noFill();
strokeWeight(4);
stroke(random(255),random(255),random(255));
quad(438,431,486,420,469,463,430,476);
