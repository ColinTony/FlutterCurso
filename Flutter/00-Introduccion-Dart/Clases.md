___
#clases #override
____

Las clases es el 95%de Flutter. Son lo mismo que en otros lenguajes, manejando las Clases manejaremos Flutter sin problema.


```Dart
void main(){
	final Hero wolverine = new Hero('Logan' , 'Regeneracion'); // new puede no ponerse
	print(wolverine);
	print(wolverine.name);
	print(wolverine.power);
}

class Hero{
	String name;
	String power;
	
	// Constructor
	//Hero(String name , String power) : 
	//	name = Pname,
	//	power = pPower;
	
	// Constructor de otra forma
	Hero(this.name , this.power);
}
```

___
# Override
____


```Dart
void main(){
	final Hero wolverine = new Hero(name: 'Logan' , power: 'Regeneracion'); // new puede no ponerse
	print(wolverine);
	print(wolverine.name);
	print(wolverine.power);
}

class Hero{
	String name;
	String power;
	
	// Constructor
	//Hero(String name , String power) : 
	//	name = Pname,
	//	power = pPower;
	
	// Constructor de otra forma
	Hero({required this.name , required this.power});
	
	// El override sobrescribe la funcion nativa toString
	@override
	String toString(){
		return 'Hola Mundo';
	}
}
```

[[Name constructors]]