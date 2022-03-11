c1 = color(255, 204, 0) # Define color 'c'
c2 = color(50, 55, 100) # Create a color for 'c'


def setup():
    size(800,400)

    # Gradient background
    r = 26;
    g = 50;
    b = 117;


#colorMode(RGB,1,1,1);

    for i in range(0, height):
        i = i + 1;
        #r = r - 1;
        #g = g - 1;
        #b = b - 1;
        stroke(blendColor(lerpColor(c1,c2,map(i,0,height,0.0,1.0)),c2,ADD));
        line(0, i, width, i);

def draw():
    controlX2 = 690; 
    controlY2 = 590;

    noFill();
    stroke(255, 102, 0);
    line(285, 220, mouseX, mouseY);
    line(controlX2, controlY2, 215, 280);
    stroke(0, 0, 0);
    bezier(285, 220, mouseX, mouseY, controlX2, controlY2, 215, 280);
    
def keyPressed():
    for i in range(0, height):
        i = i + 1;
        #r = r - 1;
        #g = g - 1;
        #b = b - 1;
        stroke(blendColor(lerpColor(c1,c2,map(i,0,height,0.0,1.0)),c2,ADD));
        line(0, i, width, i);
