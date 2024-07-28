void main() {
  print(saludar("Sebastián"));
  print(sumar(3, 2));
  print(saludarEnIngles(name: "Andres"));
}

String saludar([String nombre = "usuario"]) {
  return "!Buenas tardes, $nombre¡";
}

int sumar(int num1, [int num2 = 0]) => num1 + num2;

// Funcion con parametros y argumento por nombe
String saludarEnIngles({required String name, String message = "Hello,"}) {
  return "$message $name";
}
