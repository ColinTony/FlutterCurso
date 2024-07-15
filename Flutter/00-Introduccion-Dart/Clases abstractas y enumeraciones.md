________
#clases_abstractas #enumeraciones
____

Las clases abstractas son como un molde para crear otro molde.
Las abstractas no se pueden instanciar por si mismas.

Funcionan igual que Java.

```Dart
void main ()
{
	final windPlant = 
}
// Creamos una enumeracion
enum PlantType {nuclear , wind , water};
abstract class EnergyPlant{
	double energyLeft;
	PlantType type;

	EnergyPlant({
		required this.energyLeft,
		required this.type
	});
	// Se definen pero no se implementan
	void consumeEnergy(double amount);
}
```


[[Extends]]