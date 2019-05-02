var gramatica;
var verbos;
var sujetos;
var pregunta="";
var correcta=0;
var contador=0;

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
    if(nu<0&&nu>=gramaticas.length){
        nu=0;
    }
    gramatica=gramaticas[nu];
    //alert(gramatica.Formula);    
}

function armar(){
    var arr=gramatica.Formula.split("_");
    var nui=Math.floor(Math.random() * (sujetos.length));
    var lugar=1;
    for(var i=0; i<arr.length; i=i+1){
        switch (arr[i]) {
            case "sujeto":            
                pregunta+=sujetos[nui].sujeto+" ";
                break;
            case "tobe":
                if(lugar==1){
                    var insiso=Math.floor(Math.random() * 3);
                    pregunta+=" _____ ";
                    if(insiso==0){
                        correcta=0;
                        document.getElementById("respuestaA").innerHTML =sujetos[nui].ser;
                        if(sujetos[nui].ser=="am"){
                            document.getElementById("respuestaB").innerHTML ="are";
                            document.getElementById("respuestaC").innerHTML ="is";
                        }else if(sujetos[nui].ser=="are"){
                            document.getElementById("respuestaB").innerHTML ="is";
                            document.getElementById("respuestaC").innerHTML ="am";
                        }else if(sujetos[nui].ser=="is"){
                            document.getElementById("respuestaB").innerHTML ="am";
                            document.getElementById("respuestaC").innerHTML ="are";
                        }
                    }else if(insiso==1){
                        correcta=1;
                        document.getElementById("respuestaB").innerHTML =sujetos[nui].ser;
                        if(sujetos[nui].ser=="am"){
                            document.getElementById("respuestaA").innerHTML ="are";
                            document.getElementById("respuestaC").innerHTML ="is";
                        }else if(sujetos[nui].ser=="are"){
                            document.getElementById("respuestaA").innerHTML ="is";
                            document.getElementById("respuestaC").innerHTML ="am";
                        }else if(sujetos[nui].ser=="is"){
                            document.getElementById("respuestaA").innerHTML ="am";
                            document.getElementById("respuestaC").innerHTML ="are";
                        }
                    }else if(insiso==2){
                        correcta=2;
                        document.getElementById("respuestaC").innerHTML =sujetos[nui].ser;
                        if(sujetos[nui].ser=="am"){
                            document.getElementById("respuestaB").innerHTML ="are";
                            document.getElementById("respuestaA").innerHTML ="is";
                        }else if(sujetos[nui].ser=="are"){
                            document.getElementById("respuestaB").innerHTML ="is";
                            document.getElementById("respuestaA").innerHTML ="am";
                        }else if(sujetos[nui].ser=="is"){
                            document.getElementById("respuestaB").innerHTML ="am";
                            document.getElementById("respuestaA").innerHTML ="are";
                        }
                    }
                }
                break;
            case "verbopresentesimple":
                pregunta+=verbos[Math.floor(Math.random() * verbos.length)].VerboPresenteSimple;
                break;
            case "complemento":
                break;
            default:
                break;
        }
    }
    //alert(pregunta);
    document.getElementById("pregunta").innerHTML =pregunta;
}

function exitoVerbos(resultad){
    verbos=JSON.parse(resultad)
    //alert(resultad);
}

function exitoSujetos(res){
    sujetos=JSON.parse(res);
    //alert(res);
    armar();
}

function rdbA(boton){
    alert("A");
}

function rdbB(boton){
    alert("B");
}

function rdbC(boton){
    alert("C");
}