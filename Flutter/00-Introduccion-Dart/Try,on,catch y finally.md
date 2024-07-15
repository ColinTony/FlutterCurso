___
#try #catch #finally
___

On : nos permite reaccionar al tipo del excepccion
los demás ya los sabemos.

```dart
void main()
{
	print('Innicio del programa');
	try{
		final value = await httpGet('https://url.com');
		print('exito: $value');
	}on Exception catch (err){
		print('UPPS esta controlado : ${err}');
	}
	catch(err){
		print(err);
	} finally {
		print('Fin del try y catch');
	}
	print('Fin del programa');
}
// usamos async para explicitamente decir que devuelve un future
Future<String> httpGet(String url) async{
	// await transforma el a codigo secuencial
	await Future.delayed(Duration(secnds:1));
	throw Exception('No hay parametros en URL')
}
```

[[Streams]]