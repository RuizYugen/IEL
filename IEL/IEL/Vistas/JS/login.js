function btnEntrarOnClick() {
   
    if ($("#password").val() !== "" && $("#user").val() !== "") {
        alert($("#user").val() + "--" + $("#password").val());
         IEL.Servicios.wsUsuario.getAll(completo);      
    } else {
        alert("Complete los campos");
    }
}

function completo(respose) {
    alert(respose);
}