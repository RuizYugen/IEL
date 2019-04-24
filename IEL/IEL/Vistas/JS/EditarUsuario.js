var User, Password, Nombre, ApellidoPaterno, ApellidoMaterno, Correo, Privilegio = "Alumno", Foto;
var elegir = false;
var actual;
$(document).ready(function () {
    actual = localStorage.Usr;    
    document.getElementById('EditUser').disabled = true;
    IEL.Servicios.wsUsuario.getUsuarioByID(actual,cargar);
});

function cargar(response) {
    var usuario = JSON.parse(response);   
    document.getElementById('EditUser').value = usuario.User;
    document.getElementById('EditPassword').value = usuario.Password;
    document.getElementById('EditNombre').value = usuario.Nombre;
    document.getElementById('EditApellidoPaterno').value = usuario.ApellidoPaterno;
    document.getElementById('EditApellidoMaterno').value = usuario.ApellidoMaterno;
    document.getElementById('EditCorreo').value = usuario.Correo;
}

function cambiarAvatar(foto) {
    var nueva = foto.src;
    if (foto.id.localeCompare("imgHombre") == 0) {
        document.getElementById('imgHombre').style.border = "thick solid blue";
        document.getElementById('imgMujer').style.border = "none";
    } else {
        document.getElementById('imgHombre').style.border = "none";
        document.getElementById('imgMujer').style.border = "thick solid blue";
    }
    var indice = nueva.indexOf('V');
    Foto = nueva.substring((indice - 1), nueva.length);
    elegir = true;
}

function editar() {
    User = document.getElementById('EditUser').value;   
    Password = document.getElementById('EditPassword').value;    
    Nombre = document.getElementById('EditNombre').value;
    ApellidoPaterno = document.getElementById('EditApellidoPaterno').value;
    ApellidoMaterno = document.getElementById('EditApellidoMaterno').value;
    Correo = document.getElementById('EditCorreo').value;
    if (Password.localeCompare("") == 0 || Nombre.localeCompare("") == 0 || ApellidoPaterno.localeCompare("") == 0 || ApellidoMaterno.localeCompare("") == 0 || Correo.localeCompare("") == 0 || !elegir) {
        alert("Todos los campos son obligatorios");
    } else {
        IEL.Servicios.wsUsuario.update(User,Password,Nombre,ApellidoPaterno,ApellidoMaterno,Correo,Foto,Privilegio,volver);
    }
}

function volver(response) {
    alert("Usuario editado");
    location.href = "CatalogoUsuarios.aspx";
}