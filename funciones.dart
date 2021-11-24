void main() {
  final nombre = 'Amaia';
  //FUNCIONES
  saludar(nombre);
  saludo();
  saludo1(nombre, 'Felicidades');

  //En esta llamada asigno el valor a cada variable
  saludo2(mensaje: 'Kaixo', nombre: nombre);

  // NO es necesario respetar el orden en el que se pasan los parametros
  saludo2(nombre: nombre, mensaje: 'Grettings');
}

// Hay que especificar si regresa algo o no, void, String, int....
void saludar(String name) {
  print('Hola $name');
}

// para indicar que sea un argumento opcional en el caso de que no mande ningun valor, poner entre llaves
void saludo([String name = 'No name']) {
  print('Hola $name');
}

// En este caso el primer argumento es obligatorio y el segundo es opcional
void saludo1(String nombre, [String mensaje = 'Hello']) {
  print('$mensaje $nombre');
}

//Siempre que se vaya a utilizar esta funcion, nombre y mensaje es obligatorio que se manden, son required
void saludo2({
  required String nombre,
  required String mensaje,
}) {
  print('$mensaje $nombre');
}
