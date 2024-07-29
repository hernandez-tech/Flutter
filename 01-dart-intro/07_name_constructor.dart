void main() {
  final Map<String, dynamic> rawJson = {
    'nombre': 'Spiderman',
    'poder': 'Trepar paredes',
    'estaVivo': true
  };
  
  final iroman2 = Hero.fromJson(rawJson);

  final ironman = Hero(
    estaVivo: false, 
    poder: 'Dinero', 
    nombre: 'Tony Stark'
  );

  print(ironman);
  print(iroman2);
}

class Hero {
  String nombre;
  String poder;
  bool estaVivo;

  Hero({
    required this.nombre, 
    required this.poder, 
    required this.estaVivo
    });
  
  Hero.fromJson(Map<String, dynamic> json)
    : nombre = json['nombre'] ?? "No se encontro un nombre",
      poder = json['poder'] ?? "Sin poder",
      estaVivo = json['estaVivo'] ?? "No se encontro estado";

  @override
  String toString() {
    return "$nombre - $poder - Esta vivo: ${estaVivo ? 'Sí' : 'No'}";
  }
}