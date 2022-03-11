size(800,800)

c1 = color(255, 204, 0) # Define color 'c'
c2 = color(50, 55, 100) # Create a color for 'c'

#colorMode(RGB,1,1,1);

noFill();
for i in range(0, height):
    i = i + 1;
    stroke(blendColor(lerpColor(c1,c2,map(i,0,height,0.0,1.0)),c2,ADD));
    line(0, i, width, i);
    
for i in range(0,1000):
    stroke(0,40)
    bezier(random(width), random(height),random(width), random(height), random(width), random(height),random(width), random(height));
