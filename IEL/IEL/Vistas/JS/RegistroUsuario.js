function Insertar() {
    alert("hola")
    //debugger;
    var Usuario = {};

    Usuario.User = $("txtUsuario").val();
    Usuario.Password = $("txtPassword").val();
    Usuario.Nombre = $("txtNombre").val();
    Usuario.ApellidoPaterno = $("txtApellidoP").val();
    Usuario.ApellidoMaterno = $("txtApellidoM").val();
    Usuario.Correo = $("txtCorreo").val();
    Usuario.Foto = $("txtFoto").val();
    Usuario.Privilegio = $("txtPrivilegio").val();
    IEL.Servicios.wsUsuario.insert(Usuario, onSucess, onError);
}

function onSucess() {
    alert("Registro exitoso.")
}

function onError() {
    alert("No se ha podido insertar")
}