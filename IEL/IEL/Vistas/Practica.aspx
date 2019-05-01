<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Practica.aspx.cs" Inherits="IEL.Vistas.Practica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="JS/AreaDePractica.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/Servicios/wsGramatica.asmx"/>
            <asp:ServiceReference Path="~/Servicios/wsVerbo.asmx"/>
            <asp:ServiceReference Path="~/Servicios/wsSujeto.asmx"/>
        </Services>
    </asp:ScriptManager>
    <div class="text-center">
        <div id="pregunta">Pregunta</div>
        <br />
        <br />
        <br />
        <div class="radio">
            <input id="rdbA" type="radio" />Respuesta
            <br />
            <br />
            <input id="rdbB" type="radio" />
            <br />
            <br />
            <input id="rdbC" type="radio" />
            <br />
            <br />
        </div>
        <br />
        <div class="btn-group">
            <input id="btnAnterior" type="button" value="Anterior" class="btn btn-primary"  />
            <input id="btnSiguiente" type="button" value="Siguiente" class="btn btn-primary" />
        </div>
    </div>
    <script src="JS/AreaDePractica.js"></script>
</asp:Content>
