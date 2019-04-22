$(document).ready(function () {
    alert("hola");
    IEL.Servicios.wsUsuario.getAll(onComplete_cargarlista);
});

function onComplete_cargarlista(response) {
    alert("onComplete_cargarlista + " + response);
    var dataSet = JSON.parse(response);

    tabla = $('#tabla').dataTable({
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
    });
}

