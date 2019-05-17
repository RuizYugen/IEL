<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ReporteVerbos.aspx.cs" Inherits="IEL.Vistas.ReporteVerbos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 221px;
        }
    </style>
</asp:Content>

   

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
                        <Columns>
                            <asp:BoundField DataField="IdVerbo" HeaderText="IdVerbo" SortExpression="IdVerbo" />
                            <asp:BoundField DataField="VerboTraduccion" HeaderText="VerboTraduccion" SortExpression="VerboTraduccion" />
                            <asp:BoundField DataField="VerboPresenteSimple" HeaderText="VerboPresenteSimple" SortExpression="VerboPresenteSimple" />
                            <asp:BoundField DataField="VerboPasadoSimple" HeaderText="VerboPasadoSimple" SortExpression="VerboPasadoSimple" />
                            <asp:BoundField DataField="VerboPasadoParticipio" HeaderText="VerboPasadoParticipio" SortExpression="VerboPasadoParticipio" />
                        </Columns>
                        <HeaderStyle Font-Names="Arial" />
                        <RowStyle BackColor="#CCCCCC" BorderColor="Black" Font-Names="Arial" />
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getAll" TypeName="Datos.Daos.VerboDAO"></asp:ObjectDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnImprimir" runat="server" OnClick="BtnImprimir_Click" Text="Imprimir Reporte" class="btn btn-primary"  />
                </td>
                <td>&nbsp;</td>
            </tr>

             <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
   

</asp:Content>
