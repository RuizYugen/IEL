<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ReporteEstadisticas.aspx.cs" Inherits="IEL.Vistas.ReporteEstadisticas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 234px;
        }
        .auto-style2 {
            width: 607px;
        }
        .auto-style3 {
            margin-right: 61px;
        }
        .auto-style4 {
            width: 234px;
            height: 63px;
        }
        .auto-style5 {
            width: 607px;
            height: 63px;
        }
        .auto-style6 {
            height: 63px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:GridView ID="GridViewEs" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" CssClass="auto-style3" Width="583px">
                        <Columns>
                            <asp:BoundField DataField="IdEstadistica" HeaderText="IdEstadistica" SortExpression="IdEstadistica" />
                            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                            <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio" />
                            <asp:BoundField DataField="Nivel" HeaderText="Nivel" SortExpression="Nivel" />
                        </Columns>
                        <HeaderStyle Font-Names="Arial" />
                        <RowStyle BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" />
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getAll" TypeName="Datos.Daos.EstadisticaDAO"></asp:ObjectDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

               <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Button ID="BtnImprimir" runat="server" OnClick="Button1_Click"  Text="Imprimir Reporte" class="btn btn-primary" Height="36px" />
                   </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    
    </div>

</asp:Content>
