<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="CatalogoUsuarios.aspx.cs" Inherits="IEL.Vistas.CatalogoUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/CatalogoUsuariosCSS.css"/>
    <script src="JS/CatalogoUsuarios.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/Servicios/wsUsuario.asmx" />
            </Services>
    </asp:ScriptManager>

    <a href='RegistroUsuario.aspx' class="enlaceboton">Agregar</a>
    <a href='PersonalizacionUsuario.aspx' name="Editar" class="enlaceboton" >Editar</a>
    <input id="btnEliminar" type="button" value="Eliminar"/>
 
    <br />
    <table id="TablaUsuarios" class="table table-striped table-bordered small"
        style="margin: 0 auto; width: 90%;">
    </table>

</asp:Content>
