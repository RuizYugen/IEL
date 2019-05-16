var usuario;
//Llama low métodos de los web services necesarios para obtener los datos que serán cargados en la página.
$(document).ready(function () {
    usuario = $('#logear').text();
    IEL.Servicios.wsUsuario.getUsuarioByID(usuario, cargarDatos);
    IEL.Servicios.wsPractica.getTotalPresenteByUser(usuario, cargarEstadisticas);
    IEL.Servicios.wsPractica.getTotalPasadoByUser(usuario, estadisticasPasado);
    IEL.Servicios.wsPractica.getTotalVerbosByUser(usuario, estadisticasVerbos);
    IEL.Servicios.wsPractica.getTotalVocabularioByUser(usuario, estadisticasVocabulario); 
});


var datosObtenidos;//Objeto de usuario correspondiente al usuario que desea consultar las estádistias.

//Carga el nombre del usuario en la página. Recibe un JSON con el objeto usuario, y lo convierte a objeto.
//Se acceden a los atributos del objeto para poder mostrar el nombre completo del usuario.
function cargarDatos(resultado) {
    
    datosObtenidos = JSON.parse(resultado);
   var nombre = datosObtenidos.Nombre+" "+datosObtenidos.ApellidoPaterno+" "+datosObtenidos.ApellidoMaterno;
    document.getElementById("txtNombreAlumno").innerHTML = nombre;
}
//Carga el progreso total del presente simple.
//Recibe la cantidad de preguntas contestadas del tema presente simple, este resultado es multiplicado por 10 para obtener el porcentaje.
//Se asigna el porcentaje obtenido al elemento correspondiente para ser visualizado en la página.
//El resultado obtenido, además es guardado en la variable global avanceps que será utilizada para calcular el progreso total.
var avanceps;
function cargarEstadisticas(resultado) {
    var contestadas = JSON.parse(resultado);
    var avancePS = contestadas * 10;
    avanceps = avancePS;
    document.getElementById("txtSimplePresent").innerHTML = "Simple present: " + avancePS + "%";
}
//Carga el progreso total del pasado simple.
//Recibe la cantidad de preguntas contestadas del tema pasado simple, este resultado es multiplicado por 10 para obtener el porcentaje.
//Se asigna el porcentaje obtenido al elemento correspondiente para ser visualizado en la página.
//El resultado obtenido, además es guardado en la variable global avancePasado que será utilizada para calcular el progreso total.
var avancePasado;
function estadisticasPasado(resultado) {
    var contestadas = JSON.parse(resultado);
    var avancePS = contestadas * 10;
    avancePasado = avancePS;
    document.getElementById("txtSimplePast").innerHTML = "Simple past: " + avancePS + "%";
}
//Carga el progreso total del tema verbos.
//Recibe la cantidad de preguntas contestadas del tema verbos, este resultado es multiplicado por 10 para obtener el porcentaje.
//Se asigna el porcentaje obtenido al elemento correspondiente para ser visualizado en la página.
//El resultado obtenido, además es guardado en la variable global avanceVerbos que será utilizada para calcular el progreso total.
var avanceVerbos;
function estadisticasVerbos(resultado) {
    var contestadas = JSON.parse(resultado);
    var avancePS = contestadas * 10;
    avanceVerbos = avancePS;
    document.getElementById("txtVerbs").innerHTML = "Verbs: " + avancePS + "%";
}
//Carga el progreso total del tema vocabulario.
//Recibe la cantidad de preguntas contestadas del tema vocabulario, este resultado es multiplicado por 10 para obtener el porcentaje.
//Se asigna el porcentaje obtenido al elemento correspondiente para ser visualizado en la página.
//El resultado obtenido, además es guardado en la variable global avanceVc que será utilizada para calcular el progreso total.
//Se manda llamar el método cargarAvance() para que puedan ser visualizadas las barras de progreso.
var avanceVc;
function estadisticasVocabulario(resultado) {
    var contestadas = JSON.parse(resultado);
    var avancePS = contestadas * 10;
    avanceVc = avancePS;
    document.getElementById("txtVocabulario").innerHTML = "Vocabulary : " + avancePS + "%";

    cargarAvance();
}
//Se obtiene el progreso total calculando el promedio de todos los temas, para esto se hace uso de las variables avanceps,
//avancePasado, avanceVerbos y avanceVc, dónde se almacenó el progreso total de caa uno de los temas.
//Se le asigna el valor a las barras de progreso correspondientes a cada tema, y a la barra del progreso total. 
function cargarAvance() {
    var avance = (avanceps + avancePasado + avanceVerbos + avanceVc) / 4;
    document.getElementById("barraPresente").value = avanceps;
    document.getElementById("barraPasado").value = avancePasado;
    document.getElementById("barraVerbo").value = avanceVerbos;
    document.getElementById("barraVocabulario").value = avanceVc;
    
    avance = avance.toFixed(2);
    document.getElementById("txtAvance").innerHTML = "Avance: " + avance + "%";
    document.getElementById("barProgress").value = avance;



}
