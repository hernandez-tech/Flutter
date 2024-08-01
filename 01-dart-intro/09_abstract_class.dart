void main() {
  
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPLant(energyLeft: 1000);
  
  print("Wind: ${chargePhone(windPlant)}");
  print("Nuclear: ${chargePhone(nuclearPlant)}");
}

double chargePhone(EnergyPlant plant) {
  if(plant.energyLeft < 10) {
    throw Exception("No es posible carga el telefono");
  }
  
  return plant.energyLeft - 10;
}

enum PlantType {nuclear, wind, water}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;
  
  EnergyPlant({required this.energyLeft, required this.type});
  
  void consumeEnergy (double amount);
}

// Extends & Implements
class WindPlant extends EnergyPlant {
  WindPlant ({required double initialEnergy})
    :super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy (double amount) {
    energyLeft -= amount;
  }
}

class NuclearPLant implements EnergyPlant {
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPLant({required double this.energyLeft});
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
}
