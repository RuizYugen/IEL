var gramatica;
var verbos;
var sujetos;
$(document).ready(function () {
    var tema = 1;
    IEL.Servicios.wsGramatica.getByTema(tema, exito);
    IEL.Servicios.wsVerbo.getAll(exitoVerbos);
    IEL.Servicios.wsSujeto.getAll(exitoSujetos);
});


function exito(resultado) {
    //Math.random()
    var gramaticas=JSON.parse(resultado);
    var nu=Math.floor(Math.random() * (gramaticas.length));
    //alert(nu);
    gramatica=gramaticas[nu];
    //alert(gramatica.Formula);
}

function exitoVerbos(resultad){
    verbos=JSON.parse(resultad)
    //alert(resultad);
}

function exitoSujetos(res){
    sujetos=JSON.parse(res);
    alert(res);
}