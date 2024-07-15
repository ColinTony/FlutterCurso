___
#mixins #ejercicio_mixins
____

En la siguiente clase, vemos el uso de los Mixins.

  

Cuando Fernando grabó el video, aun no existía la palabra reservada **mixin**, por lo que estos se declaraban con **abstract class** como se verá en el video.

  

Ej:

```dart
abstract class Volador {
    void volar() => print('estoy volando!');
}
```

  

En las últimas versiones de Dart, estos se declaran usando únicamente la palabra reservada **mixin**, de la siguiente forma:

```Dart
mixin Volador {
	void volar() => print('estoy volando!');
}
```

  

  

Pueden ver más en la propia documentación: [https://dart.dev/language/mixins](https://dart.dev/language/mixins).

____

Lectura recomedada:

[Dart: What are mixins?. It’s a kind of magic ✨ | by Romain Rastel | Flutter Community | Medium](https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3)

> En Dart es muy utulizado. 


_______________________


# Ejercicio Mixins
____________


```Dart
mixin class Animal {}
mixin class Mamifero extends Aninal {}
mixin class Ave extends Aninal {}
mixin class Pez extends Aninal {}


abstract class Volador{
	void volar () => print('Estoy volando');
}
abstract class Caminante{
void caminar() => print('Estoy caminando');
}
abstract class Nadador{
void nadar() => print('Estoy Nadando');
}
```


Con ello ahora podemos crear clases
```Dart
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}
class Paloma extends Ave with Caminante, Voaldor{}
class Pato extends Ave with Caminante, Volador , Nadador{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador,Volador{}
```

```Dart
void main(){
 final flipeer = Delfin();
 flipper.nadar();
 final batman = Murcielago();
 batman.volar();
 batman.caminar();
 final namor = Pato();
 pato.nadar();
 pato.caminando();
 pato.volar();
}
```

[[Futures]]