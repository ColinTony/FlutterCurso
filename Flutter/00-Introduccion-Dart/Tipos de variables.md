___
#tipos_de_variables #tipos_de_datos #dynamic_type #maps
____

Hay muchos tipos de datos que se pueden usar en DART

>si no sabemos si poner final o const , dejémoslo final , Final es mas rápido su utilización en memoria.

```Dart
void main()
{
	 final String pokemon = 'Ditto'; // cadena de caracteres
	 final int hp = 100; // solo numeros sin decimales
	 final bool isAlive = true; // para poder ser nulo bool? a=null
	 final List<String> abilities = ['impostor']; // lo puede inferir dart pero lo pondermos nosotros
	 final List<String> sprites = <String>['ditto/front.png','ditto/back.png'];
	 
	 // String multi linea
	 print("""
		 $pokemon
		 $hp
		 $isAlive
		 $abilities
		 $sprites
	 """);
}
```


____
# Dynamic type

____

Hay que tratar de evitar usarlo , pero se puede usar en diferentes casos. Como un mapa que recibimos en internet para no tipar todos los datos.

>dynamic por defecto acepta nulos , por defecto Dart dara warnings, que nos dira que esa variable puede ser nula.

```Dart
void main()
{
	 dynamic errorMessage = 'Error'; // ser dynamic cualquier tipo de dato
	 errorMessage = true;
	 errorMessage= [1,2,3,4];
	 errorMessage = {1,2,3,4,5};
	 errorMessage = null;
	 
	print("""
	$errorMessage
	
	""")
}
```

___
# Maps
___

Un mapa son pares de valores , key,value

```Dart
void main()
{

	 final Map<String, dynamic> pokemon = {
		 'name' : 'Ditto',
		 'hp' : 100,
		 'isAlive' : <String>['impostor'],
		 'sprites' : {
			1: 'pathBack.png',
			2: 'pathFront.png'
		 }
	 };
	print(pokemon);
	print('Name : ${pokemon['name']}');
	print('sprintes : ${pokemon['sprites']}');
	print('Back: ${pokemon['sprites'][1]}');
	print('Front: ${pokemon['sprites'][2]}');
}
```

Usualmente se tipean todos los datos ya que es raro como lo vemos en el código anterior.

[[List, iterables y Sets]]