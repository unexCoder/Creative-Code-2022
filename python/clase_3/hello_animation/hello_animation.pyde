
x = 100
v = 5

def setup():
    size(800,800)
    background(0)
    
def draw():
    global x,v
    background(0)    
    x = x + v
    circle(x,height/2,10)
    if((x >= width) | (x <= 0)):
        print('hit')
        v *= -1
        print(v)
