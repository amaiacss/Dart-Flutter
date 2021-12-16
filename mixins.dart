// Mixins --> Añade ciertas funcionlidades especificas a una clase, (Mezclar)

abstract class Animal { }

abstract class Mamifero extends Animal { }
abstract class Ave extends Animal { }
abstract class Pez extends Animal { }

// ESTO SON LOS MIXINS
abstract class Volador {
  void volar() => print('estoy volando');
}

abstract class Caminante {
  void caminar() => print('estoy caminando');
}

abstract class Nadador {
  void nadar() => print('estoy nadando');
}

// LOS MIXINS CREADOS SE ASIGNAN A LAS CLASES QUE QUEREMOS
class Delfin extends Mamifero with Nadador{}

// SI ES MÁS DE UNA CARACTERISTICA SE SEPARA CON COMA
class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}


void main() {

      // SI SE CREA UNA INSTANCIA DE DELFIN, gracias al mixin mostrará el mensaje que corresponde
   final flipper = new Delfin();
   flipper.nadar();

   final batman = new Murcielago();
   batman.caminar();
   batman.volar();

}
