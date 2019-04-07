$(document).ready(function () {
    var usuario = "Jose1";
  
    IEL.Servicios.wsUsuario.getUsuarioByID(usuario, cargarDatos);

});
var datosObtenidos;
function cargarDatos(resultado) {
    
    datosObtenidos = JSON.parse(resultado);
   var nombre = datosObtenidos.Nombre+" "+datosObtenidos.ApellidoPaterno+" "+datosObtenidos.ApellidoMaterno;
    document.getElementById("txtNombreAlumno").innerHTML = nombre;
}