____
#future
___
> Un future representa principalmente el resultado de una operación asíncrona. Es una promesa de que pronto tendrás un valor. La promesa puede fallar y hay que manejar la excepción . Los futures son un acuerdo de que el el futuro tendrás un valor para ser usado.


```dart
void main()
{
	print('Innicio del programa');
	httpGet('https://url-para-peticion').then((value){
		print(value);
	})
	.catchError((err) {
		print('Error : $err')
	});
	print('Fin del programa');
}

Future<String> httpGet(String url){
	return Future.delayed(Duration(seconds:1),(){
		throw 'Error en la peticion http';
		//return 'Respuesta de la peticion http';
	});
}
```

[[Async - Await]]