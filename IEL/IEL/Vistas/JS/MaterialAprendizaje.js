﻿$(document).ready(function () {

    IEL.Servicios.wsTema.getAll(onComplete_cargarlista);

    //$("#mostrarmodal").modal("show");
    //cambiarInfo1();
});


var daSetT1;
function ObtnerTema1(response1) {
    dataSet1 = JSON.parse(response1);
    var nombre = dataSet1.ContenidoTraduccion;
    //alert(nombre +"Tema 1");
    IEL.Servicios.wsTema.getTemaByID(2, ObtnerTema2);

    // document.getElementById('tituloTema').innerHTML = "Tema 1";
    // document.getElementById('Desp').innerHTML = dataset[1].NombreTraduccion;

}

var daSetT2;
function ObtnerTema2(response1) {
    dataSet2 = JSON.parse(response1);
    var nombre = dataSet2.ContenidoTraduccion;
    //alert(nombre+ "Tema 2");
    //IEL.Servicios.wsTema.getTemaByID(3, ObtnerTema3);
    IEL.Servicios.wsVerbo.getAll(ObtnerTema3);
    // document.getElementById('tituloTema').innerHTML = "Tema 1";
    // document.getElementById('Desp').innerHTML = dataset[1].NombreTraduccion;

}

var daSetT3;
function ObtnerTema3(response1) {
    dataSet3 = JSON.parse(response1);
    var count = Object.keys(dataSet3).length;
    // alert(dataSet3[0].VerboPasadoSimple);
    IEL.Servicios.wsTema.getTemaByID(4, ObtnerTema4);
    // document.getElementById('tituloTema').innerHTML = "Tema 1";
    // document.getElementById('Desp').innerHTML = dataset[1].NombreTraduccion;

}

var daSetT4;
function ObtnerTema4(response1) {
   
    daSetT4 = JSON.parse(response1);
    var count = Object.keys(daSetT4).length;
   // alert(count);
   // alert(daSetT4.NombreTraduccion);
}



var id1, id2, id3;
function onComplete_cargarlista(response) {
    var dataSet = JSON.parse(response);
    var count = Object.keys(dataSet).length;
    // alert(count);
    for (var i = 0; i < count; i++) {
        document.getElementById('tema' + (i + 1) + '').innerHTML = dataSet[i].NombreTraduccion;

        var nume = (i + 1).toString();
        var idNu = i + 1;
        var metodo = " ObtnerTema" + nume + "";
        // alert(metodo);

    }
    IEL.Servicios.wsTema.getTemaByID(1, ObtnerTema1);

    //var newDiv = document.createElement("div");

    // $('#tblCobros tbody').on('click', 'tr', function () {
    //     filaSeleccionada = tabla.row(this).index();
    // })






}


function Tema1() {


    //$('#ContenidoT1').remove('#tbVerbos')
    //$('#ContenidoT1').empty();
    //$('#tbVerbos').dataTable().fnClearTable();
    $('ContenedorTabla').hide();
    var x = dataSet1.ContenidoTraduccion;
   // alert(x);
    document.getElementById('ContenedorTabla').innerHTML = x;
    document.getElementById('tituloTema').innerHTML = dataSet1.NombreTraduccion;
    //$('ContenidoT1').hide();





}
function Tema2() {
    // $('ContenidoT1').empty();
    var x = dataSet2.ContenidoTraduccion;
    document.getElementById('ContenedorTabla').innerHTML = x;
    document.getElementById('tituloTema').innerHTML = dataSet2.NombreTraduccion;
}


function Tema3() {
    // $('ContenidoT1').empty();
    var x = daSetT4.ContenidoTraduccion;
    document.getElementById('ContenedorTabla').innerHTML = x;
   // alert(daSetT4.NombreTraduccion);
    document.getElementById('tituloTema').innerHTML = daSetT4.NombreTraduccion;


}


function DestruirVerbos() {
    tabla = $('#tbVerbos').DataTable();
    tabla.destroy();


}



function tbVerbos() {
    //alert("onComplete_cargarlista + " + response);

    document.getElementById('tituloTema').innerHTML = 'Verbos';
    document.getElementById('ContenedorTabla').innerHTML = '<table id="tbVerbos" class="table table-striped table-bordered small" style="margin: 0 auto; width:70%"> </table>';
    tabla = $('#tbVerbos').DataTable({

        "paging": false,
        "ordering": false,
        "info": false,
        "searching": false,
        data: dataSet3,
        columns: [
            {
                title: "Verbo", data: "VerboTraduccion",
                render: function (data, type, row) {
                    //  return '<input type="text" value="' + data + '" />';
                    return data;
                }
            },

            {
                title: "Presente Simple", data: "VerboPresenteSimple",
                render: function (data, type, row) {

                    return data;
                }
            },


            {
                title: "Pasado simple", data: "VerboPasadoSimple",
                render: function (data, type, row) {
                    return data;
                }
            },

            {
                title: "Pasado participio", data: "VerboPasadoParticipio",
                render: function (data, type, row) {
                    return data;
                }
            }

        ]


    });

    //$('#tbVerbos').DataTable().Destroy();


}

window.onload = function () {
    $("#mostrarmodal").modal("show");
    cambiarInfo1();

}



