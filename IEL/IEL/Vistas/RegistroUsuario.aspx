<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="IEL.Vistas.RegistroUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="JS/RegistroUsuario.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Usuario:
        <input id="txtUsuario" type="text" /></p>
    <p>
        Password:
        <input id="txtPassword" type="password" /></p>
    <p>
        Nombre:
        <input id="txtNombre" type="text" /></p>
    <p>
        Apellido Paterno:
        <input id="txtApellidoP" type="text" /></p>
    <p>
        Apellido Materno:
        <input id="txtApellidoM" type="text" /></p>
    <p>
        Correo:
        <input id="txtCorreo" type="text" /></p>
    <p>
        Foto:<input id="txtFoto" type="file" />
    </p>
    <p>
        Privilegio:
        <select id="txtPrivilegio" name="D1">
            <option>Alumno</option>
            <option>Administrativo</option>
        </select></p>
    <p>
        <input id="btnAceptar" type="button" value="Aceptar" onclick="Insertar()" /><input id="Reset1" type="reset" value="Cancelar" /></p>
</asp:Content>
