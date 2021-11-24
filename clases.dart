// CLASES
void main() {
  // La palabra reservada new es opcional
  final wolverine = Heroe(nombre: 'Logan', poder: 'Regeneración');

  //wolverine.nombre = 'Logan';
  //wolverine.poder = 'Regeneración';

  print(wolverine);
}

class Heroe {
  // METODOS, PROPIEDADES, CONSTRUCTOR(hay tipos de constructores)
  // puede ser nulo, por lo que se pone el interrogante despues del String
  //String? nombre;
  //String? poder;
  // En el caso de que estas propiedades siempre tengan que tener un valor se instancian gracias al constructor
  String nombre;
  String poder;

  //Constructor, al recibir los parametros podemos inicializar las propiedades de esta forma corta
  // las llaves simbolizan q son argumentos por nombre,esto quiere decir q en la creación de la clase,hay q indicar
  //el dato a que argumento pertenece --> nombre: ,,,,,
  //Tb es necesario indicar que son required, porque sino parecerá que son opcionales
  Heroe({required this.nombre, required this.poder});

  // Reescribir en metodo toString
  @override
  String toString() {
    // devuelve el nombre de esta clase
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
