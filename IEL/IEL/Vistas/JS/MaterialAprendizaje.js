window.onload = function () {
    // Cogemos los valores pasados por get


   // VISTA.servicios.prueba.getAll(onComplete_cargarlista);

}

$(document).ready(function () {
    $("#mostrarmodal").modal("show");
    cambiarInfo1();
});



function onComplete_cargarlista(response) {
    var dataSet = JSON.parse(response);
    document.getElementById('tema1').innerHTML = dataSet[0].Titulo;
    document.getElementById('tema2').innerHTML = dataSet[1].Titulo;
    document.getElementById('tema3').innerHTML = dataSet[2].Titulo;
    document.getElementById('tema4').innerHTML = dataSet[3].Titulo;
    document.getElementById('tema5').innerHTML = dataSet[4].Titulo;
}


function cambiarInfo1() {

    document.getElementById('tituloTema').innerHTML= "Tema 1"
    document.getElementById('Desp').innerHTML = "Los adjetivos son aquéllas palabras que se unen a un nombre para ampliar, complementar y cuantificar su significado.";
    document.getElementById('ContenidoT1').innerHTML = "En inglés hay ocho clases de adjetivos: <br/>" +
        "1. Calificativos: good, bueno; thin, delgado; dry, seco; bad, malo; short, corto <br/>" +
        "2. Demostrativos: this, este; that, aquel; these, estos; those, aquellos <br/>" +
        "3. Distributivos: each, cada; every, todo; either, uno y otro; neither, ni uno ni otro.<br/>" +
        "4. De cantidad: some, algún; any, cualquier; little, poco; few, pocos; many, muchos; much, mucho; enough, bastante <br/>" +
        "5. Interrogativos:  which?, cual?; what?, ¿qué?; whose?, ¿de quién?, etc.<br/>" +
        "6. Posesivos: my, mi; your, tu, su, vuestro, his, su (de él); her, su (de ella); its, su (de ello), our, nuestro; your, vuestro, their, suyo (de ellos/as) <br/>" +
        "7. Propios: French, francés; English, inglés; Spanish, español; etc. <br/>" +
        "8. Numerales: one, uno; ten, diez; first, primer, second, segundo; etc.<br/>" + "<br/>" +

        "<h4>GENERALIDADES<h4/><br/>" +
        "<pre>-Los adjetivos en inglés son invariables en género y número.<br/>" +
        "<b>I have a big book</b> / Tengo un libro grande <br/>" +
        "<b>-Verbo To be + (am/is/are/was, etc.) + adjetivo </b><br/> " +
        "These pictures are very beautiful / Esas imágenes son muy bonitas<br>" +
        "-To be + adjetivo tiene en ocasiones la equivalencia a 'Tener'<br/></pre > ";

}

function cambiarInfo2() {
    document.getElementById('tituloTema').innerHTML = "Tema 2"
    document.getElementById('Desp').innerHTML = "Los adjetivos son aquéllas palabras que se unen a un nombre para ampliar, complementar y cuantificar su significado.";
    document.getElementById('ContenidoT1').innerHTML = "En inglés hay ocho clases de adjetivos: <br/>" +
        "1. Calificativos: good, bueno; thin, delgado; dry, seco; bad, malo; short, corto <br/>" +
        "2. Demostrativos: this, este; that, aquel; these, estos; those, aquellos <br/>" +
        "3. Distributivos: each, cada; every, todo; either, uno y otro; neither, ni uno ni otro.<br/>" +
        "4. De cantidad: some, algún; any, cualquier; little, poco; few, pocos; many, muchos; much, mucho; enough, bastante <br/>" +
        "5. Interrogativos:  which?, cual?; what?, ¿qué?; whose?, ¿de quién?, etc.<br/>" +
        "6. Posesivos: my, mi; your, tu, su, vuestro, his, su (de él); her, su (de ella); its, su (de ello), our, nuestro; your, vuestro, their, suyo (de ellos/as) <br/>" +
        "7. Propios: French, francés; English, inglés; Spanish, español; etc. <br/>" +
        "8. Numerales: one, uno; ten, diez; first, primer, second, segundo; etc.<br/>" + "<br/>";

}

function cambiarInfo3() {
    document.getElementById('tituloTema').innerHTML = "Tema 3"

    document.getElementById('Desp').innerHTML = "En español encontramos principalmente dos géneros de sustantivos: masculino y femenino." +
        "En inglés, encontramos cuatro distintos géneros.Los ya conocidos masculino y femenino, neutro y común";
    document.getElementById('ContenidoT1').innerHTML = "- El GÉNERO MASCULINO, se aplica a personas del sexo masculino. Como identificador, se antepone el pronombre he.<br/>" +
        "Charles is reading a book.He is a doctor. / Carlos está leyendo un libro.Él es médico. ";
}