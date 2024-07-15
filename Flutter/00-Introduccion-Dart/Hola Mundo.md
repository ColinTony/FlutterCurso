____
#HolaMundo #Basico #const #late #final
_____

Siempre hay que poner un tipo de dato , ya que dart es tipado.

Como en la mayoría de lenguajes , su punto de entrada es por la función main.


```Dart
void main(){
	String myName = 'Colin';
	print('Hola &myName');
}
```


Asignación tardía
Nos permite asignarle el valor final mas tarde.
```dart
void main(){
	late final myName;
	myName = 'Mundo';
	print('Hola $myName');
}
```

Constante que se asigna en tiempo de construcción.
```Dart
void main(){
	const myName = 'Colin';
	print('Hola $myName'); // inyeccion de strings.
}
```

Para ejecutar código para la concatenación de Strings.

```Dart
void main(){
	const myName = 'Colin';
	print('Hola ${myName.toUpperCase();}'); // inyeccion de strings.
}
```

[[Tipos de variables]]