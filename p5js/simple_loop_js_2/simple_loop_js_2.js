// Javascript >> P5JS
let n = 100;
let a = 255;
let c = 255;
function setup() {
  createCanvas(1200, 800);
  background(0)
  noFill();
  frameRate(60);
}

function draw() {
  //background(0);
  strokeWeight(noise(frameCount/10)*10)
  fill(0,map(mouseY, 0, width, 0, 255))
  rect(0,0,width,height);
  stroke(c, map(mouseX, 0, width, 0, 255));

  for (let i = 0; i < n; i++) {
    //line(random(width), random(height), random(width), random(height));
    //rect(random(width), random(height), random(width), random(height));
    //ellipse(random(width), random(height), random(width), random(height));
    bezier(random(width),random(height),
    mouseX,mouseY,
    width/2,height/2,
    random(width),random(height));
  }
}

function keyPressed() {
  c = color(random(255),0,255);
}
