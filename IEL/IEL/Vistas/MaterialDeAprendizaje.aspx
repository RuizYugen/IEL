<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaterialDeAprendizaje.aspx.cs" Inherits="IEL.Vistas.MaterialDeAprendizaje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="CSS/EstilosMaterialDeAprendizaje.css" rel="stylesheet" />
    <script src="JS/MaterialAprendizaje.js"></script>
    <script>
  
</script>
</head>
<body>

    <div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3>Bienvenido al material de aprendizaje</h3>
     </div>
         <div class="modal-body">
            <h4>En esta sección encontraras información que te ayude a comprender mejor la gramatica del ingles</h4>
             
     </div>
         <div class="modal-footer">
        <a href="#" data-dismiss="modal" class="btn btn-danger">Cerrar</a>
     </div>
      </div>
     </div>
 </div>





    <section id = "menu">
		<section id = "titulo">
			Menú
		</section>
		<section id = "item_menu">
			<div class="item" id="tema1" onclick="cambiarInfo1()">Opcion 1</div>
			<div class="item" id="tema2" onclick="cambiarInfo2()">Opcion 2</div>
			<div class="item" id="tema3" onclick="cambiarInfo3()">Opcion 3</div>
			<div class="item" id="tema4" onclick="cambiarInfo4()">Opcion 4</div>
			<div class="item" id="tema5" onclick="cambiarInfo5()">Opcion 5</div>
		</section>
	</section>

    <section id="cuerpo">
     <div class="container" >
         <div class="row">
             
             <div class="col-sm-12" >
                 <p>Lorem ipsum</p>
             </div>
         </div>
         <div class="row">
             
             <div class="col-sm-12" ">
                 <h3 class="text-center" id ="tituloTema" style="color:white">Titulo</h3>
             </div>
         </div>

         <div class="row">
             
             <div class="col-sm-12" >
                 <p>Lorem ipsum</p>
             </div>
         </div>
         
         <div class="row">
             <div class="col-sm-12" id="Contenido"   style="background-color:white;">
                 <h5>Descripción</h5>
                 <p id="Desp">Lorem ipsum</p>
                 <h5>Contenido:</h5>
                  <p id="ContenidoT1">Lorem ipsum</p>
             </div>
         </div>
     </div>
		
	</section>
	
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/Servicios/wsGramaticaPorTemaprueba.asmx" />
            </Services>
        </asp:ScriptManager>
    </form>
</body>
</html>
