// Javascript >> P5JS

function setup() {
  createCanvas(1200, 800);
  background(0)
  stroke(255);
  noFill();  
}

let n = 2;

function draw() {
  for (let i = 0; i < n; i++) {
    //line(random(width), random(height), random(width), random(height));
    //rect(random(width), random(height), random(width), random(height));
    ellipse(random(width), random(height), random(width), random(height));
  }
}
