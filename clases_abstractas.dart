// CLASES ABSTRACTAS
//Es una clase que no se puede instanciar o inicializar
void main() {
  final perro = new Perro();
  final gato = new Gato();

  // llamada de la función y se el pasa como parametro objeto perro
  sonidoAnimal( perro );
  sonidoAnimal( gato );

//llamada a la clase perro que usa un método
  perro.emitirSonido();
}


// Función que recibe un elemento de tipo Animal, y lo que hará es llamar a la funcion que imprime el texto
void sonidoAnimal( Animal animal ) {
  animal.emitirSonido();
}


// Clase abstracta, empiezan por mayúscula
// Estas clases sirven para que otras clases puedan implementar lo que contiene la clase abstracta
abstract class Animal {
  // opcional (?)
  int? patas;

  Animal();

  void emitirSonido();
}



// De esta forma creamos una clase que implementa, hereda class Animal
// Una clase que implenta una clase abstracta debe declarar los elementos de ésta
class Perro implements Animal {
  int? patas;
  // funcion que imprime un texto
  void emitirSonido() {
    print('Guaaaauuuuuuu');
  }

  // otra forma de llamar a una función como la de antes

//void emitirSonido() => print('Guauuuuuuu');

}


class Gato implements Animal {
  int? patas;
  int? cola;

  void emitirSonido() => print('Miauuuuuuuuu');

}