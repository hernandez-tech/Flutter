void main() async {
  print("Inicio del main");

  try {
    final respuesta = await httpGet("https://hola.mundo");
    print(respuesta);
  } on Exception catch(ex) {
    print(ex);
  } catch (err) {
    print("Error: $err");
  } finally {
    print("Finalizo el try and catch");
  }

  print("Fin del main");
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));
  
  throw Exception("Falta un argumento en la URL");
  
  // throw "Error en la petición";
  
  // return "Tenemos respuesta de la petición";
}

