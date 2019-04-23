var User, Password, Nombre, ApellidoPaterno, ApellidoMaterno, Correo, Privilegio = "Alumno", Foto;
var elegir = false;
var lista;
$(document).ready(function () {
    IEL.Servicios.wsUsuario.getAll(cargarLista);
});

function cargarLista(response) {
    lista = JSON.parse(response);    
}

function cambiarAvatar(foto) {
    var nueva = foto.src;
    if (foto.id.localeCompare("imgHombre")==0) {
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

function guardar() {    
    User = document.getElementById('User').value;    
    Password = document.getElementById('Password').value;
    Nombre = document.getElementById('Nombre').value;
    ApellidoPaterno = document.getElementById('ApellidoPaterno').value;
    ApellidoMaterno = document.getElementById('ApellidoMaterno').value;
    Correo = document.getElementById('Correo').value;
    if (User.localeCompare("") == 0 || Password.localeCompare("") == 0 || Nombre.localeCompare("") == 0 || ApellidoPaterno.localeCompare("") == 0 || ApellidoMaterno.localeCompare("") == 0 || Correo.localeCompare("") == 0 || !elegir) {
        alert("Todos los campos son obligatorios");
    } else {
        var insertar = true;
        for (var i = 0; i < lista.length; i++) {
            if(lista[i].User.localeCompare(User)==0){
                insertar = false;
            }                  
        }
        if(insertar){
            IEL.Servicios.wsUsuario.insert(User, Password, Nombre, ApellidoPaterno, ApellidoMaterno, Correo, Foto, Privilegio, Exito);
        } else {
            alert("El usuario ya existe, intenta con otro.");
        }
        
    }
}

function Exito(response) {    
    document.getElementById('User').value = "";
    document.getElementById('Password').value = "";
    document.getElementById('Nombre').value = "";
    document.getElementById('ApellidoPaterno').value = "";
    document.getElementById('ApellidoMaterno').value = "";
    document.getElementById('Correo').value = "";
    alert("Usuario insertado correctamente");
    location.href="CatalogoUsuarios.aspx";
}