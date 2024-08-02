void main() async {
  print("Inicio del main");

  try {
    final respuesta = await httpGet("https://hola.mundo");
    print(respuesta);
  } catch (err) {
    print("Error: $err");
  }

  print("Fin del main");
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));
  
  throw "Error en la petición";
  
  // return "Tenemos respuesta de la petición";
}
