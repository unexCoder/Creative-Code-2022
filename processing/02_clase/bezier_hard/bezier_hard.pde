size(500,500);

int controlX1, controlY1, controlX2, controlY2;
controlX1 = 210; 
controlY1 = 210; 
controlX2 = 290; 
controlY2 = 290;

noFill();
stroke(255, 102, 0);
line(285, 220, controlX1, controlY1);
line(controlX2, controlY2, 215, 280);
stroke(0, 0, 0);
bezier(285, 220, controlX1, controlY1, controlX2, controlY2, 215, 280);

