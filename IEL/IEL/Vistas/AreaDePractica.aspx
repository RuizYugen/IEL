<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="AreaDePractica.aspx.cs" Inherits="IEL.Vistas.AreaDePractica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <asp:Label ID="Label1" runat="server" Text="Pregunta"></asp:Label>
        <br />
        <br />
        <br />
        <div class="radio">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Respuesta1" />
        <br />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Respuesta2"/>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Respuesta3"/>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton4" runat="server" Text="Respuesta4"/>
        <br />
        <br />
        </div>
        <br />
        <div class="btn-group">
            <input id="ButtonAnterior" type="button" value="Anterior" class="btn btn-primary"/>
            <input id="Button1" type="button" value="1" class="btn btn-secondary"/>
            <input id="Button2" type="button" value="2" class="btn btn-secondary"/>
            <input id="Button3" type="button" value="3" class="btn btn-secondary"/>
            <input id="Button4" type="button" value="4" class="btn btn-secondary"/>
            <input id="Button5" type="button" value="5" class="btn btn-secondary"/>
            <input id="Button6" type="button" value="6" class="btn btn-secondary"/>
            <input id="Button7" type="button" value="7" class="btn btn-secondary"/>
            <input id="Button8" type="button" value="8" class="btn btn-secondary"/>
            <input id="Button9" type="button" value="9" class="btn btn-secondary"/>
            <input id="Button10" type="button" value="10" class="btn btn-secondary"/>
            <input id="ButtonSiguiente" type="button" value="Siguente" class="btn btn-primary"/>
        </div>

    </div>
</asp:Content>
