void main() {
  final wolverine = Hero(poder: "Regeneración", nombre: "Wolverine");

  print(wolverine);
  print(wolverine.nombre);
  print(wolverine.poder);
}

class Hero {
  String nombre;
  String poder;

  Hero({required String this.nombre, String this.poder = "Sin poder"});

  // Hero(String pNombre, String pPoder)
  //    : nombre = pNombre,
  //      poder = pPoder;
  
  // Es para indicar que se esta sobreescribiendo un metodo o función
  @override
  String toString() {
    return "$nombre - $poder";
  }
}
