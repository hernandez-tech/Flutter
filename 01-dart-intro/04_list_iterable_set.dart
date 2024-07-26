void main() {
  final List<int> numeros = [1, 2, 3, 3, 3, 4, 5, 7, 8, 8, 8, 8, 9, 10];

  print("Lista de numeros: $numeros");
  print("Length: ${numeros.length}");
  print("Index 6: ${numeros[6]}");
  print("Index first: ${numeros.first} ");
  print("Index last: ${numeros.last} ");
  print("Reversed: ${numeros.reversed} ");

  final numbersReversed = numeros.reversed;

  print("numersReversed: $numbersReversed");
  print("List: ${numbersReversed.toList()}");
  print("Set: ${numbersReversed.toSet()}");
  
  final numerosMayoresA5 = numeros.where((int num) {
    return num > 5;
  });
  
  print("Numeros mayores a 5: ${numerosMayoresA5.toSet()}");
}
