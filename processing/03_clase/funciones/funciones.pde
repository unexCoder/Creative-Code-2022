void setup () {
  int a = 5;
  int b = 7; 
  int c = 15;

  int calculo = (a + b) * c;
  println(calculo);

  int calculo2 = calculadora(5, 7, 15);
  println(calculo2);
}

 int calculadora(int arg1, int arg2, int arg3) {
    int resultado = (arg1 + arg2) * arg3;
    return resultado;
  }
