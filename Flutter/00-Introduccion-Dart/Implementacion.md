___
#implementes
____

implements:  Hay veces que solo queremos implementar solo algunos método y no todos.



```Dart
void main ()
{
	final nuclearPlant = nuclearPlant (energyLeft:1000);
}
// Creamos una enumeracion
enum PlantType {nuclear , wind , water};
abstract class EnergyPlant{
	double energyLeft;
	final PlantType type;

	EnergyPlant({
		required this.energyLeft,
		required this.type
	});
	// Se definen pero no se implementan
	void consumeEnergy(double amount);
}

class NuclearPlant implements EnergyPlant{
	@override
	double energyLeft;
	@override
	final PlantType type = PlantType = nuclear;
	
	NuclearPlant({required this.energyLeft})
	
	@override
	void consumeEnergy(souble amount){
		energyLeft -= amount * 0.5;
	}
}
```

La idea es reutilizar el codigo.

[[Mixins]]