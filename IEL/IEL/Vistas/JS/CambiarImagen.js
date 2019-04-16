var usuario;
$(document).ready(function () {
    usuario = $('#logear').text();
});

function cambiarImg(foto) {
    var nueva = foto.src;   
    var indice = nueva.indexOf('V');
    var ruta = nueva.substring((indice - 1), nueva.length);    
    IEL.Servicios.wsUsuario.cambiarImagen(usuario, ruta,respuesta);
}

function respuesta(res) {
    alert("Imagen cambiada correctamente");
}


function volver() {
    location.href = "PersonalizacionUsuario.aspx";
}