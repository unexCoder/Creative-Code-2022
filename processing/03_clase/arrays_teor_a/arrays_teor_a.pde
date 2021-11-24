// ARRAYS
// CAP 11 - Shifmann

// LOS ARRAYS SON SIMILARES A LAS VARIABLES PERO,
// EN VEZ DE REALIZAR EL SEGUIMIENTO DE UN SOLO VALOR O DATO
// EL ARRAY ALMACENA UNA LISTA DE DATATIPOS IGUALES (2 O +)

// ESTO ES IMPORTANTE POR DOS RAZONES:
// 1) UN ARRAY PERMITE EL SEGUIMIENTO DEL VALOR DE CADA VARIABLE
// ALOJADA EN EL MISMO

// 2) UN ARRAY PERMITE EL SEGUIMIENTO DEL VALOR DE LA POSICION
// EN L ARRAY MISMO DE ESE DATO LO CUAL PUEDE SER TAMBIEN MUY UTIL

// EN UN ARRAY CADA ELEMENTO DE LA LISTA TIENE UN UNICO "INDEX"
// CORRESPÓNDIENTE A LA POSICION QUE OCUPA DENTRO DE LA MISMA
// TAMBIEN LLAMADA "SLOT"
// EL "INDEX" ES UN VALOR ENTERO!! SIEMPRE ARRANCANDO DESDE 0

// DECLARACION
// UN ARRAQY ALOJA UN DATATIPO UNICO QUE INDICA EN LA DECLARACION
int [] arrayDeEnteros;
float [] arrayDeFlotantes;
PImage [] arrayDeFotos; // album de fotos!!

// UN ARRAY TIENE UN VALOR FIJO DE SLOTS, EL CUAL TAMBIEN DEBE
// DECLARARSE ANTES DE INICIALIZAR CADA SLOT CON SU VALOR
// LUEGO DE ESTO LA LONGITUD DEL ARRAY NO PUEDE SER MODIFICADA
// PARA ESTO SE USA EL OPERADOR new

boolean [] arrayDeBooleanos = new boolean [10];

// A list of 4 floating point numbers
float[] scores = new float[4]; 
// A list of 100 Human objects
Human[] people = new Human[100];
// Using a variable to specify size
int num = 50;
Car[] cars = new Car[num]; 
// Using an expression
Spaceship[] ships = new Shapeship[num*2 + 3]; 

// el numero entero siempre que indica el tamaño de un array
// al declararlo puede ser "hard-coded" o una variable en si
// o el resultado de una opaeración

// INICIALIZACION

// LA INICIALIZACION DE CADA SLOT PUEDE SER "HARD-CODED"
// ESPECIFICANDO UNO A UNO CADA VALOR ACCEDIENDO AL SLOT
// CORRESPONDIENTE MEDIANTE EL "INDEX"
int[] stuff = new int[3];
stuff [0] = 8; // The first element of the array equals 8
stuff [1] = 3; // The second element of the array equals 3
stuff [2] = 1; // The third element of the array equals 1

// ESTO PUEDE SER TAMBIEN REALIZADO EN UNA SOLA SENTENCIA
int[] arrayOfInts = { 
  1, 5, 8, 9, 4, 5
};
float[] floatArray = { 
  1.2, 3.5, 2.0, 3.4123, 9.9
};

// CUANDO SE DEBE INIICALIZAR UN ARRAY MUY EXTENSO ES MUCHO
// MAS COMODO USAR UN LOOP
float[] values = new float[1000];
int n = 0;
while (n < 1000) {
  values[n] = random(0, 10);
  n = n + 1;
}
// UNA VEZ DECLARADA E INICIADA SE OPERA CON UN ARRAY DE MANERA 
// SIMILAR A CUALQUIER OTRA VARIABLE
for (int i = 0; i < 1000; i + + ) {
  values[i] = values[i] * 2;
}


