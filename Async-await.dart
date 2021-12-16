// en una aplicacion con Future, primero se ejecutan las funciones sincronas y despues todas las asincronas que quedan pendientes
// ASYNC : (asincrona). transforma una función en asincrona. Esta palabra reservada en una función significa que esa función retorna un Future, por lo tanto solo se puede usar en Future

// AWAIT : Sólo se puede usar dentro de una función ASYNC (asíncrona), en la llamada hace que el programa espere a que se resuelva la petición para poder continuar

// POdemos convertir el main en una función asincrona
void main() async {

  print('Antes de la petición');

  final data = await httpGet('https://api.nasa.com/aliens');

  print( data );

//   final nombre = await getNombre( '10' );
//   print( nombre );
//    getNombre( '10' ).then( print );


  print('Fin del programa');

}


Future<String> getNombre( String id ) async {
  return '$id - Fernando';
}


Future<String> httpGet( String url ) {
  return Future.delayed(
      Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos'
  );
}
