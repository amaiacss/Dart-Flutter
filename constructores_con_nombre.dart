// CLASES
void main() {
  //Esto es un Map
  final rawJson = {'nombre': 'Tony Stark', 'poder': 'Dinero'};

  // Crear una instancia de Heroe
  final iroman = Heroe.fromJson(rawJson);
  print(iroman);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({required this.nombre, required this.poder});

  //Constructor por nombre , INSTANCIA DE LA CLASE RECIBIENDO UN Map, en este caso un rawJson
  //El constructor se identifica porque tiene el nombre de la clase al principio
  //Recibe como parámetro un Map, y la palabra que va al final(json) es un nombre cualquiera que yo le pongo para
  //facilitar su uso dentro del constructor
  //El signo de admiración es una forma de indicar que siempre se va a recibir al menos ese parámetro, que no va a ser null, le digo a Dart que confie
  // Los dos puntos indican que lo que le sigue se ejecute en el momento que se está ejecutando la instancia, de esta forma
  //Dart ya entiendo que está recibiendo dato en las variables y no son null y no pueden ser null puesto que no llevan el '?

  Heroe.fromJson(Map<String, String> json)
      : this.nombre = json['nombre']!,
        //Doble interrogante ,es una condición en el caso de que no reciba el parámetro, imprime el texto alternativo
        this.poder = json['poder'] ?? 'No tiene poder';

  // Reescribir en metodo toString
  @override
  String toString() {
    // devuelve el nombre de esta clase
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
