void main() {
  final String nombre = "Sebastian";
  final int edad = 21;
  final bool saldo = false;
  final List<String> habilidades = ["correr", "saltar"];
  final puntos = <int>[5, 7, 3];
  final Map<String, dynamic> = {'nombre': 'Sebastián', 'apellido': 'Hernandez'}; 

  // Dainamic == null
  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4};
  errorMessage = null;

  print("""
  $nombre
  $edad
  $saldo
  $habilidades
  $puntos
  $errorMessage
  """);