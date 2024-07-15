___
#async #await #try #catch
___


```dart
void main()
{
	print('Innicio del programa');
	try{
		final value = await httpGet('https://url.com');
		print(value);
	}catch(err){
		print(err);
	}
	print('Fin del programa');
}
// usamos async para explicitamente decir que devuelve un future
Future<String> httpGet(String url) async{
	// await transforma el a codigo secuencial
	await Future.delayed(Duration(secnds:1));
	throw 'Error en la peticion';
}
```


[[Try,on,catch y finally]]