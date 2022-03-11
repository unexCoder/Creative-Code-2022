c1 = color(255, 204, 0) # Define color 'c'
c2 = color(50, 55, 100) # Create a color for 'c'

def setup():
    size(800,800)
    noFill()

    for i in range(0, height):
        i = i + 1;
        stroke(blendColor(lerpColor(c1,c2,map(i,0,height,0.0,1.0)),c2,ADD));
        line(0, i, width, i);

def draw():
    for i in range(0, height):
        i = i + 1;
        #r = r - 1;
        #g = g - 1;
        #b = b - 1;
        stroke(blendColor(lerpColor(c1,c2,map(i,0,height,0.0,1.0)),c2,ADD));
        line(0, i, width, i);

    strokeWeight(map(mouseX,0,width,0,20));
    trans = map(mouseY,0,height,0,255);
    numLines = map(mouseX,0,width,10,200);
    for i in range(0,int(numLines)):
        stroke(0,trans);
        bezier(random(width), random(height),random(width), random(height), random(width), random(height),random(width), random(height));

    #saveFrame("frames/####.jpg")
    
def keyPressed():
    saveFrame("caps/####.jpg")
