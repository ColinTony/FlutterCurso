___
#funciones #parametros #funciones_fecha #funcion_lamda #parametros_con_nombre
____

```Dart
void main (){
	print(greetEveryone);
	print('Suma : ${addTwoNumbers(10,20)}');
}

// funcion que devuelve String
String greetEveryone(){
	return 'Hello everyone!';
}
// otra forma funcion lamda
String greetEveryone2() => 'Hello everyone!';

// funcion suma dos numeros
int addTwoNumbers( int a , int b){
 return a + b;
}

// funcion Lamda
int addTwoNumbers2 (int a, int b) => a + b;

// Podemos tener parametros opcionales con [] es un entero opcional
int addtwoNumbersOptional( int a , [int? b]){
	b = b ?? 0; // ?? si el valor tiene un numero
	// b??=0;
	return a + b;
}

// Otra forma
// Podemos tener parametros opcionales con [] es un entero opcional
int addtwoNumbersOptional( int a , [int b = 0]){
	return a + b;
}

```

# Parámetros con nombre

Podemos pasarle valores de parámetros por nombre

```Dart
void main (){
	print(greetPerson(name: 'Colin', message: 'Hi'))
}

// optionales y por nombre con {} se vuelven opcionales
// el required hara que por lomenos manden el name
String greetPerson({requiered String name , String message = 'Hola,'}){
	return '$message Colin';
}

```

[[Clases]]