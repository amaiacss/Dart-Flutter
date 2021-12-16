// ES UNA TAREA ASINCRONA , ES UNA TAREA QUE SE VA A EJECUTAR A DIFERENTE TIEMPO
// ALGO COMÚN DE UN FUTURE ES UNA PETICIÓN HTTP, ES DECIR HACEMOS UNA PETICIÓN A UN SERVICIO Y ESTAMOS ESPERANDO LA RESPUESTA, CUANDO TENEMOS LA RESPUESTA , SEGUIMOS EJECUTANDO CIERTA PARTE DEL CODIGO, PERO NO SE BLOQUEA LA EJECUCIÓN DE LO DEMÁS
void main() {

  print('Antes de la petición');

  // .then , es lo que se va a ejecutar despues de que este future(httpGet) se resuelva
  // El future es una tarea que se está ejecutando, pero no detiene el programa, se puede comprobar al ver que imprime el mensaje 'antes del programa', sigue mostrando 'fin del programa', pero de mientras está ejcutando el future y cuando esta listo muestra el texto
  httpGet('https://api.nasa.com/aliens')
      .then( (data) {

    print( data.toUpperCase() );

  });


  print('Fin del programa');

}

// FUNCIÓN Future
Future<String> httpGet( String url ) {
  // delayed es una propiedad estática de Future retrasa una tarea asincrona
  return Future.delayed(
    // Duration establece el tiempo
      Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos'
  );
}