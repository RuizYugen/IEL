$(document).ready(function () {
    IEL.Servicios.wsQuiz.getAllPreguntas(cargarPrimera);

});
var listaObtenida;
var numeroPregunta = 0;
function cargarPrimera(resultado) {
    //debugger;
    listaObtenida = JSON.parse(resultado);
    var primera = listaObtenida[0];
    document.getElementById("textopregunta").innerHTML = primera.pregunta;
    document.getElementById("answerA").innerHTML = primera.RespuestaCorrecta;
    document.getElementById("answerB").innerHTML = primera.RespuestaIncorrecta1;
    document.getElementById("answerC").innerHTML = primera.RespuestaIncorrecta2;
    document.getElementById("answerD").innerHTML = primera.RespuestaIncorrecta3;

    document.getElementById("color1").style.backgroundColor = "#6666CC";
    document.getElementById("color2").style.backgroundColor = "#9999FF";
    document.getElementById("color3").style.backgroundColor = "#9999FF";
    document.getElementById("color4").style.backgroundColor = "#9999FF";
    document.getElementById("color5").style.backgroundColor = "#9999FF";
    document.getElementById("color6").style.backgroundColor = "#9999FF";
    document.getElementById("color7").style.backgroundColor = "#9999FF";
    document.getElementById("color8").style.backgroundColor = "#9999FF";
    document.getElementById("color9").style.backgroundColor = "#9999FF";
    document.getElementById("color10").style.backgroundColor = "#9999FF";
    numeroPregunta = numeroPregunta + 1;
    //alert(resultado);
}

function cambiar() {
    switch (numeroPregunta) {
        case 0:
            var pregunta = listaObtenida[0];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color1").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 1:
            var pregunta = listaObtenida[1];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color2").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 2:
            var pregunta = listaObtenida[2];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color3").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 3:
            var pregunta = listaObtenida[3];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color4").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 4:
            var pregunta = listaObtenida[4];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color5").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 5:
            var pregunta = listaObtenida[5];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color6").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 6:
            var pregunta = listaObtenida[6];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color7").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 7:
            var pregunta = listaObtenida[7];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color8").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 8:
            var pregunta = listaObtenida[8];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color9").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 9:
            var pregunta = listaObtenida[9];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            document.getElementById("color10").style.backgroundColor = "#6666CC";
            numeroPregunta = numeroPregunta + 1;
            break;
        case 10:
            /*var pregunta = listaObtenida[10];
            document.getElementById("textopregunta").innerHTML = pregunta.pregunta;
            document.getElementById("answerA").innerHTML = pregunta.RespuestaCorrecta;
            document.getElementById("answerB").innerHTML = pregunta.RespuestaIncorrecta1;
            document.getElementById("answerC").innerHTML = pregunta.RespuestaIncorrecta2;
            document.getElementById("answerD").innerHTML = pregunta.RespuestaIncorrecta3;
            numeroPregunta = numeroPregunta + 1;*/
            break;
        default:
            numeroPregunta = 0;
            break;
    }
    
}