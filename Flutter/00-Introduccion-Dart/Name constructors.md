___
#name_constructors
___

Constructores por nombre , se pueden tener varios constructores con diferetes tipos de argumentos

```dart
void main()
{
	// Si queremos una instancia de una peticion o json sin tipar
	final Map<String, dynamic> rawJson = {
		'name'	: 'Tony Stark',
		'power' : 'Money',
		'isAlive' : true
	};

	final Hero ironman = new Hero (
		isAlive : false,
		power : 'Money',
		name : 'Tony Stark'
	)
}

class Hero {
	String name;
	String power;
	String isAlive;
	
	Hero ({required this.name , required this.power , required this.isAlive});

	// otro constructor con nombre
	Hero.fromJson(Map<String,dynamic> json) : 
		name = json['name'] ?? 'No name found',
		power = json['power'] ?? 'No power found',
		isAlive = json['isAlive'] ?? 'No isAlive found'

	@override
	String toString(){
		return '$name , $power , ${isAlive ? 'YES' : 'Nope'}'
	}
}
```


[[Getters and Setters]]