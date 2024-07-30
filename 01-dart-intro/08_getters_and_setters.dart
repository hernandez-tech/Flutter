void main() {
  final myCuadrado = Cuadrado(side: 10);
  
  myCuadrado.side = 5;

  print("Area: ${myCuadrado.area}");
}

class Cuadrado {
  double _side;

  Cuadrado({required double side})
    : _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side(double value) {
    print('Valor agregado $value');
    if (value <= 0) throw "El valor debe ser mayor a 0";
    
    _side = value;
  }

  double calcularArea() {
    return _side * _side;
  }
}
