___
#extends
___

extends : hereda todo lo de la clase abstracta.

La idea es es tener principios basicos de solid , inversion de dependencias.

```Dart
void main ()
{
	final windPlant = WindPlant(initialEnergy : 100);
	print(windPlant.initialEnergy)
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
// extends o implements
class WindPlant extends EnergyPlant {

	WindPlant({required double initialEnergy}): super(energyLeft : initialEnergy , type : PlantType.wind);
	
	@Override
	void consumeEnergy (double amount){
		energyLeft -= amount;
	}
};
```


[[Implementacion]]