___
#streams #take
___

En el documento hay mas informacion en los recursos de : [[Dart]]
take : toma los valorees y se cierra el Stream

```Dart
void main(){
	//emitNumbers();
	// para poder emitir valores alguien debe escucharlos.
	emitNumbers().listen((value) {
		print('Stream value : $value');
	});
}

Stream <int> emitNumbers(){
	Stream.periodic(const Duration(seconds : 1), (value){
		//print('desde periodic $value');
		return value;
	}).take(5);
}
```

[[async y await]]