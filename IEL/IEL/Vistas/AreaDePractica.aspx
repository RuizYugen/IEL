<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="AreaDePractica.aspx.cs" Inherits="IEL.Vistas.AreaDePractica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <asp:Label ID="txtTema" runat="server" Text="Tema"></asp:Label>
        <br />
        <br />
        <asp:Label ID="txtPregunta" runat="server" Text="Pregunta"></asp:Label>
        <br />
        <br />
        <br />
        <div class="radio">
        <asp:RadioButton ID="rdbA" runat="server" Text="Respuesta2"/>
        <br />
        <br />
        <asp:RadioButton ID="rdbB" runat="server" Text="Respuesta3" OnCheckedChanged="rdbB_CheckedChanged"/>
        <br />
        <br />
        <asp:RadioButton ID="rdbC" runat="server" Text="Respuesta4"/>
        <br />
        <br />
        </div>
        <br />
        <div class="btn-group">
            <asp:Button ID="btnAnterior" runat="server" Text="Anterior" CssClass="btn btn-primary" OnClick="btnAnterior_Click" />            
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
            <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="btnSiguiente_Click"/>            
        </div>

    </div>
</asp:Content>
