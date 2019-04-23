$(document).ready(function () {   
    IEL.Servicios.wsUsuario.getAll(onComplete_cargarlista);
});

function onComplete_cargarlista(response) {    
    var dataSet = JSON.parse(response);

    /*tabla = $('#tabla').dataTable({
        data: dataSet,
        columns: [
            { title: "User", data: "User", render: $.fn.dataTable.render.text() },
            { title: "Password", data: "Password", render: $.fn.dataTable.render.text() },
            { title: "Nombre", data: "Nombre", render: $.fn.dataTable.render.text() },
            { title: "Apellido Paterno", data: "ApellidoPaterno", render: $.fn.dataTable.render.text() },
            { title: "Apellido Materno", data: "ApellidoMaterno", render: $.fn.dataTable.render.text() },
            { title: "Correo", data: "Correo", render: $.fn.dataTable.render.text() },
            { title: "Foto", data: "Foto", render: $.fn.dataTable.render.text() },
            { title: "Privilegio", data: "Privilegio", render: $.fn.dataTable.render.text() }
        ]
    });*/

    tabla = $('#tabla').dataTable({
        data: dataSet,
        columns: [
            { title: "User", data: "User", render: $.fn.dataTable.render.text() },           
            { title: "Nombre", data: "Nombre", render: $.fn.dataTable.render.text() },
            { title: "Apellido Paterno", data: "ApellidoPaterno", render: $.fn.dataTable.render.text() },
            { title: "Apellido Materno", data: "ApellidoMaterno", render: $.fn.dataTable.render.text() },
            { title: "Correo", data: "Correo", render: $.fn.dataTable.render.text() },
            { title: "Foto", data: "Foto", render: $.fn.dataTable.render.text() },
            { title: "Privilegio", data: "Privilegio", render: $.fn.dataTable.render.text() },
            { title: "Eliminar", data: null, render: function (data, type, row) { return '<input type="button" value="Eliminar '+data.User+'" onclick="eliminar(this)" class="btn-default"/>'; } },
            { title: "Editar", data: null, render: function (data, type, row) { return '<input type="button" value="Editar '+data.User+'" onclick="editar(this)" class="btn-default"/>'; } }
        ]
    });
}

function eliminar(fila) {
    var Usuario = fila.value.substring(9, fila.value.length);
    IEL.Servicios.wsUsuario.delete(Usuario, Exito);
    alert("Usuario Eliminado");
    window.location.reload(true);
}

function Exito(response) {}

function editar(fila) {
    var Usuario = fila.value.substring(7,fila.value.length);
    alert(Usuario);
}

function agregar() {
    location.href = "AgregarUsuario.aspx";
}

