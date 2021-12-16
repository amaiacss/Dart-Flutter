// EXTENDS, ayuda a extender una clase con las funcionalidades de otra


void main() {

  final superman = new Heroe('Clark Kent');
  final luthor   = new Villano('Lex Luthor');


  print( superman );
  print( luthor );
}


abstract class Personaje {
  // String opcional poder, String obligatorio nombre
  String? poder;
  String nombre;

  // Constructor
  Personaje( this.nombre );


  // Esta clase como en JAVA, es la que se ejecuta cuando se hace un print
  @override
  String toString() {
    return '$nombre - $poder';
  }

}

//
class Heroe extends Personaje {

  int valentia = 100;
  // Al extender de Personaje Es obligatorio inicializar un constructor
  // Los dos puntos quiere decir que se ejecute en el momento que se inicializa la clase
  // super llama al constructor de la clase de la cual extiende, en este caso Personaje
  // super es una palabra reservada (superclass)
  Heroe( String nombre ): super( nombre );

}

class Villano extends Personaje {

  int maldad = 50;
  // Constructor obligado con super
  Villano( String nombre ): super( nombre );
}
