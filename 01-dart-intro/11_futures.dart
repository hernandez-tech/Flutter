void main() {
  print("Inicio del main");
  httpGet("https://hola.mundo").then((value) {
    print(value);
  }).catchError((err) {
    print("Error: $err");
  });
  print("Fin del main");
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw "Error en la petición http";
    //return "Respuesta del http";
  });
}
