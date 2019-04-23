<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="IEL.Vistas.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>  
     <link rel="stylesheet" type="text/css" href="CSS/CSSAgregarUsuario.css"/>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/Servicios/wsUsuario.asmx" />
            </Services>
    </asp:ScriptManager>
 <div  id="titulo">
        <h1>Agregar Usuario</h1>
    </div>
  <div class="form-group entrada">
      <label for="User">User</label>
      <input type="text" class="form-control" id="User" placeholder="User name" />
  </div>
     <div class="form-group entrada">
      <label for="Password">Password</label>
      <input type="password" class="form-control" id="Password" placeholder="password" />
  </div>
 <div class="form-group entrada">
      <label for="Nombre">Nombre</label>
      <input type="text" class="form-control" id="Nombre" placeholder="Nombre" />
  </div>
     <div class="form-group entrada">
      <label for="ApellidoPaterno">Apellido Paterno</label>
      <input type="text" class="form-control" id="ApellidoPaterno"  placeholder="Apellido Paterno"/>
  </div>
      <div class="form-group entrada">
      <label for="ApellidoMaterno">Apellido Materno</label>
      <input type="text" class="form-control" id="ApellidoMaterno" placeholder="Apellido Materno"/>
  </div>
       <div class="form-group entrada">
      <label for="Correo">Correo</label>
      <input type="text" class="form-control" id="Correo" placeholder="Correo"/>
  </div>
     <div class="container" id="divAvatar" >    
        <img id="imgUsuario"  src="/Vistas/IMG/userHombre.jpg" class="img-circle" alt="Imagen no disponible"/><br />   
        <button type="button" id="btnGuardarImg"  class="btn btn-default" onclick="salirImagen()">Cambiar Avatar</button> 
    </div>
    <br />
    <label for="privilegios" id="textPrivilegios">Privilegio de usuario</label>
    <div id="privilegios">
    <label class="radio-inline"><input type="radio" name="optradio" value="Administrativo" id="radioAdministrativo"/>Administrativo</label>
    <label class="radio-inline"><input type="radio" name="optradio" value="Alumno" id="radioAlumno"/>Alumno</label>
    </div>
    <br />
    <button type="submit" class="btn btn-primary" id="btnGuardar">Guardar</button>
</asp:Content>
