void main() {
  print(saludar());
  print(sumar(2,3));
}

String saludar([String nombre = "usuario"]) {
  return "!Buenas tardes, $nombre¡";
}

int sumar(int num1, [int num2 = 0]) => num1 + num2;
