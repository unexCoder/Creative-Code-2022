// CONDICIONALES

// expresiones que pueden arrojar un resultado verdadero / falso
// permiten controlar la ejecución de ciertas partes del código

// se llaman EXPRESIONES BOOLEANAS y se construyen en base a los
// llamados OPERADORES RELACIONALES (Relational Operators)

/*
!= (inequality) 
< (less than) 
<= (less than or equal to) 
== (equality) > (greater than) 
>= (greater than or equal to)
*/

// con ellos se pueden generar las llamadas COMPUERTAS LOGICAS
// y se da lugar a la ejecucion de bloques de código si y solo si
// satisfacen ciertas condiciones
// a esto se le llama BRANCHING o ramificacion, lo cual es la
// posible bifurcación del flujo de ejecucion del programa

// para esto se conbinan las expresiones booleanas con las 
// llamadas ESTRUCTURAS DE CONTROL - IF-ELSE
int a = 2; int b = 1;
if(2 > 1) {
  println("2 es mayor que 1");
}

if(a > b) {
  println("a es mayor que b");
} else {
  println("a NO es mayor que b");
}

if(a > b) {
  println("a es mayor que b");
} else if (a < b){
  println("a NO es mayor que b");
} else if (a == b) {
  println("a es igual que b");
} else {
  println("imposible");
}
// repasar pp. 60 - 61 Shifmann

// los OPERADORES LOGICOS 
// permiten evaluar mas de un condicional al mismo tiempo
// (test) && (test)  AND una cosa Y la otra
// (test) || (test)  OR  una cosa 0 la otra
// (!test) !         NOT    negación lógica

