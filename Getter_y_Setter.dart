import 'dart:math' as math;

void main() {
  final cuadrado = new Cuadrado(2);

  // usa el método SET para actualizar el valor
  cuadrado.area = 36;

  print('area: ${cuadrado.calcularArea()}');

  // acceder a una variable de la clase
  print('lado: ${cuadrado.lado}');

  //acceder a un getter-- son como funciones pero se usan como propiedades---
  print('area get: ${cuadrado.area}');
}

class Cuadrado {
  double lado = 0; // lado *lado

  //CONSTRUCTOR , Asignar el valor
  Cuadrado(double lado) : this.lado = lado;

  // Los metodos Get no llevan parentesis
  double get area {
    return this.lado * this.lado;
  }

  //SET, actualiza el valor
  set area(double valor) {
    this.lado = math.sqrt(valor);
  }

  double calcularArea() {
    return this.lado * this.lado;
  }
}
