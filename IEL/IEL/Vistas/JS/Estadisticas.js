﻿var usuario;
$(document).ready(function () {
    //var usuario = "Jose1";
    usuario = $('#logear').text();
    IEL.Servicios.wsUsuario.getUsuarioByID(usuario, cargarDatos);
    IEL.Servicios.wsPreguntaPorTema.getPreguntasPorTema(1, preguntasPresente);
    IEL.Servicios.wsPreguntaContestadaPorUsuario.getPreguntasCorrectasPresenteSimple(usuario,cargarEstadisticas);
    IEL.Servicios.wsPreguntaPorTema.getPreguntasPorTema(2, preguntasPasado);
    IEL.Servicios.wsPreguntaContestadaPorUsuario.getPreguntasCorrectasPasadoSimple(usuario, estadisticasPasado);
    IEL.Servicios.wsPreguntaPorTema.getPreguntasPorTema(3, preguntasVerbos);
    IEL.Servicios.wsPreguntaContestadaPorUsuario.getPreguntasCorrectasVerbos(usuario, estadisticasVerbos);
    IEL.Servicios.wsPreguntaPorTema.getPreguntasPorTema(4, preguntasVocabulario);
    IEL.Servicios.wsPreguntaContestadaPorUsuario.getPreguntasCorrectasVocabulario(usuario, estadisticasVocabulario);
    
});
var datosObtenidos;

var numPreguntasTotalPresente=0;
var preguntasCorrectasPresente;
var numPreguntasTotalPasado = 0;
var preguntasCorrectasPasado;
var numPreguntasTotalVerbos = 0;
var preguntasCorrectasVerbos;
var numPreguntasTotalVocabulario = 0;
var preguntasCorrectasVocabulario;
function preguntasPresente(resultado) {
   var preguntasTotal = JSON.parse(resultado);
   numPreguntasTotalPresente = preguntasTotal.length;
   
}
function preguntasPasado(resultado) {
    var preguntasTotal = JSON.parse(resultado);
    numPreguntasTotalPasado = preguntasTotal.length;

}
function preguntasVerbos(resultado) {
    var preguntasTotal = JSON.parse(resultado);
    numPreguntasTotalVerbos = preguntasTotal.length;
}

function preguntasVocabulario(resultado) {
    var preguntasTotal = JSON.parse(resultado);
    numPreguntasTotalVocabulario = preguntasTotal.length;
}
function cargarDatos(resultado) {
    
    datosObtenidos = JSON.parse(resultado);
   var nombre = datosObtenidos.Nombre+" "+datosObtenidos.ApellidoPaterno+" "+datosObtenidos.ApellidoMaterno;
    document.getElementById("txtNombreAlumno").innerHTML = nombre;
}
var avanceps;
function cargarEstadisticas(resultado) {
    var contestadas = JSON.parse(resultado);
    preguntasCorrectasPresente = contestadas.length
    var avancePS = (preguntasCorrectasPresente * 100) / numPreguntasTotalPresente;
   
    avanceps = avancePS;
    avancePS = avancePS.toFixed(2);
    document.getElementById("txtSimplePresent").innerHTML = "Simple present: " + avancePS + "%";
    
}
var avancePasado;
function estadisticasPasado(resultado) {
    var contestadas = JSON.parse(resultado);
    preguntasCorrectasPasado = contestadas.length
    var avancePS = (preguntasCorrectasPasado * 100) / numPreguntasTotalPasado;
    
    avancePasado = avancePS;
    avancePS = avancePS.toFixed(2);
    document.getElementById("txtSimplePast").innerHTML = "Simple past: " + avancePS + "%";
}
var avanceVerbos;
function estadisticasVerbos(resultado) {
    var contestadas = JSON.parse(resultado);
    preguntasCorrectasVerbos = contestadas.length
    var avancePS = (preguntasCorrectasVerbos * 100) / numPreguntasTotalVerbos;
   
    avanceVerbos = avancePS;
    avancePS = avancePS.toFixed(2);
    document.getElementById("txtVerbs").innerHTML = "Verbs: " + avancePS + "%";
}
var avanceVc;
function estadisticasVocabulario(resultado) {
    var contestadas = JSON.parse(resultado);
    preguntasCorrectasVocabulario = contestadas.length
    var avancePS = (preguntasCorrectasVocabulario * 100) / numPreguntasTotalVocabulario;
    avanceVc = avancePS;
    avancePS = avancePS.toFixed(2);
    document.getElementById("txtVocabulario").innerHTML = "Vocabulary: " + avancePS + "%";

    cargarAvance();
}
function cargarAvance() {
    //debugger;
    var avance = (avanceps + avancePasado + avanceVerbos + avanceVc) / 4;
    avance = avance.toFixed(2);
    document.getElementById("txtAvance").innerHTML = "Avance: " + avance + "%";
    document.getElementById("barProgress").value = avance;
}