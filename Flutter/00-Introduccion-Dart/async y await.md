___
#async #await #yield
___
el async* regresa el String o tipo de dato del Stream

```Dart
void main(){
	emitNumer().listen((int value){
		print('Stream value $value');
	});
}

Stream<int> emitNumber() async*{
	final valuesToEmit = [1,2,3,4,5,6,7];
	for (int i in valuesToEmit){
		await Future.delayed(const Duration(seconds:1));
		yield i;
	}
}
```