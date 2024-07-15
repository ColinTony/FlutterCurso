____
#getters #setters #aserciones
___

```Dart
void main(){
	final mySquare = Square (side : 10);
	
	mySquare.side = 5; // mySquare.side = -5
	
	print('area : ${mySquare.area}');
}

class Square {
	double _side; // Propiedad privada con _ 
	
	Square({required double side}): _side = side;


	double get area{
		return _side*_side;
	}

	set side( double value){
		print('setting new value $value');
		if (value < 0 ) throw 'Value must be >= 0';
		_side = value;
	}

	double calculateArea() {
		return _side * _side;
	}
}
```

___
# Aserciones
___

Las aserciones nos ayudan a validar en el momento de la construccion.

```Dart
void main(){
	final mySquare = Square (side : 10);
	
	mySquare.side = 5; // mySquare.side = -5
	
	print('area : ${mySquare.area}');
}

class Square {
	double _side; // Propiedad privada con _ 
	
	Square({required double side}): 
		assert(side >= 0, 'side must be >= 0'), // valida si cumple
		_side = side;


	double get area{
		return _side*_side;
	}

	set side( double value){
		print('setting new value $value');
		if (value < 0 ) throw 'Value must be >= 0';
		_side = value;
	}

	double calculateArea() {
		return _side * _side;
	}
}
```

[[Clases abstractas y enumeraciones]]