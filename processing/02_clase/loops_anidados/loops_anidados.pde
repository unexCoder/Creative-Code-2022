size(500, 500);
background(255);
smooth();

int x; // x de primer linea 
int y; // y de primer linea
int espacio; // espacio entre lineas
int len; // largo de cada linea
stroke(0);
int end; // coordenada de finalización

int n = 0;
while (n < 20) {
  x = (int)random(width);
  y = (int)random(height);
  espacio = (int)random(3,10);
  len = (int)random(10,100);
  end = (int)random(width);
  while (x <= end) {
    line (x, y, x, y + len);
    x = x + espacio;
  }
  n++;
}  

n = 0;
while (n < 20) {
  x = (int)random(width);
  y = (int)random(height);
  espacio = (int)random(3,10);
  len = (int)random(10,100);
  end = (int)random(width);
  while (y <= end) {
    line (x, y, x + len, y);
    y = y + espacio;
  }
  n++;
}  
