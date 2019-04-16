var usuario;
$(document).ready(function () {
    usuario = $('#logear').text();
    IEL.Servicios.wsUsuario.getUsuarioByID(usuario, cargarUsuario);    
});

function cargarUsuario(resultado) {
    var logeado = JSON.parse(resultado);
    document.getElementById("privilegio").innerHTML = logeado.Privilegio;
    document.getElementById("lblUsuario").innerHTML = logeado.User;
    document.getElementById("lblCorreo").innerHTML = logeado.Correo;
    document.getElementById("imgUsuario").src = logeado.Foto;
}

function cambiarPassword() {
    var nueva = document.getElementById("txtNuevaContrasena").value;    
    if (nueva.localeCompare("")==0) {
        alert("Debes escribir una contraseña válida");
        location.reload();
    } else {
        IEL.Servicios.wsUsuario.cambiarPassword(usuario, nueva, limpiar);
    }
   
}

function limpiar(resultado) {
    alert("Contraseña guardada");
    document.getElementById("txtNuevaContrasena").value = "";
    document.getElementById("txtNuevaContrasena").focus();
}

function salirImagen() {
    window.location.href = "CambiarImagen.aspx";
}
