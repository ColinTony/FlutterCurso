___
#list #iterables #sets 
____



```Dart
void main(){
	final numbers = [1,2,3,4,5,6,7,6,6,6,5,5,7,8,9,6,9,10];
	
	// metodos y propiedades
	print('List original $numbers');
	print('Length ${numbers.length}'); // longitud
	print('First : ${numbers.first}'); // obtener el primero
	print('First : ${numbers.reversed}'); // ordenado inversamente
	// reversed devuelve un iterable ()
	// Coleccion de elementos que se pueden controlar.
	final reversedNumbers = numbers.reversed;
	print('Iterable : $reversedNumbers');
	print('List : ${reversedNumbers.toList()}');
	print('Set : ${reversedNumbers.toSet()}')
	// El set no tiene duplicados sus valores son unicos.
	//WHERE en listados
	final numbersGreaterThan5 = numbers.where((int num) {
		return num>5; // si esto es true lo regresa en iterable
	});
	print('>5 iterable : $numbersGraterThat5');
	print('>5 Set : ${numbersGraterTha5.toSet()}');
}
```

[[Funciones y parametros]]