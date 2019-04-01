<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IEL.Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="<%= ResolveClientUrl("~/Content/bootstrap.min.css") %>" rel="stylesheet" type="text/css" /> 
    <script src="<%= ResolveClientUrl("~/Scripts/jquery-3.3.1.min.js") %>" type="text/javascript"></script>
    <script src="<%= ResolveClientUrl("~/Scripts/bootstrap.min.js") %>" type="text/javascript"></script>

    <script src="JS/login.js"></script>
    <style>
        .secion {
            width: 60%;
            padding-left: 40%;
            padding-top: 50px;
            text-align: center;          
        }

        .form-control {
            text-align: center;
        }

        .logo {
            width: 200px;
        }

        .btn {
            width: 100px;
        }
    </style>
</head>
<body>
    <form class="secion" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/Servicios/wsUsuario.asmx"/>
            </Services>
        </asp:ScriptManager>
         <div align="Center"><img class="img-responsive" width="40%" src="img/Logo.png" /></div>
        <br />
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="user" type="text" class="form-control" name="email" placeholder="User"/>
        </div>
        <br />
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input id="password" type="password" class="form-control" name="password" placeholder="Password"/>
        </div>
        <br />
        <button class="btn btn-primary" onclick="btnEntrarOnClick()">Entrar</button>
        <button class="btn btn-secondary">Cancelar</button>
    </form>
</body>
</html>