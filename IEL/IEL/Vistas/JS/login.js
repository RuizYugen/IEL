$(document).ready(function () {
    

});


$(document).on('click', '#btnEntrar', function () {
    alert("Si entra");
    var usuario = "Jose1";

    IEL.Servicios.wsUsuario.getUsuarioByID(usuario, cargarDatos);
});

function cargarDatos(sente) {
    alert("entro");
}