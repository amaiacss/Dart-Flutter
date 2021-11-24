void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numeros.add(11);
  print(numeros);

  //variable final q almacena una list q genera 100 posiciones, de numeros enteros => llamada a una funcion
  final masNumeros = List.generate(100, (int index) => index);

  print(masNumeros);

  // Definir mapas
  Map persona = {
    'nombre': 'Amaia',
    'edad': 35,
    'soltero': false,
    1: 180,
    2: 500
  };

  print(persona);

  // obtener el valor de una key, parece que es una Lista pero no actua igual
  print(persona['nombre']);
  print(persona[2]);

  // Es adecuado indicar en los mapas el tipo de datos que va a recibir
  //El primero será String y el segundo dato dinamico, es decir cualquiera
  Map<String, dynamic> personas = {
    'nombre': 'Amaia',
    'edad': 35,
    'soltero': false,
  };
  personas.addAll({'segundoNombre': 'Pepe'});

  print(personas);
}
