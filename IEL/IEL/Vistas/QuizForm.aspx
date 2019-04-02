<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="QuizForm.aspx.cs" Inherits="IEL.Vistas.QuizForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

     <link href="<%= ResolveClientUrl("~/Content/bootstrap.min.css") %>" rel="stylesheet" type="text/css" /> 
    <script src="<%= ResolveClientUrl("~/Scripts/jquery-3.3.1.min.js") %>" type="text/javascript"></script>
    <script src="<%= ResolveClientUrl("~/Scripts/bootstrap.min.js") %>" type="text/javascript"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    
     <link rel="stylesheet" type="text/css" href="CSS/CSSQuiz.css"/>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
            color: #CC33CC;
            font-family: Verdana;
            font-weight: bold;
            cursor: pointer;
            border-radius: 10px;
            width: 200px;
            border-color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  id="titulo">
  <h1>Quiz</h1>

</div>
    <br />
        
    <div id="centrarcoloreada">
      <div class="btn-group" id="coloreada"> 
          <button type="button" style="height:40px; width:70px" class="contestadasColor" ></button>
            <button type="button" style="height:40px; width:70px" class="contestadasColor"></button>
           <button type="button" style="height:40px; width:70px" class="contestadasColor"></button>
            <button type="button" style="height:40px; width:70px" class="sinContestarColor"></button>
           <button type="button" style="height:40px; width:70px" class="sinContestarColor"></button>
            <button type="button" style="height:40px; width:70px" class="sinContestarColor"></button>
           <button type="button" style="height:40px; width:70px" class="sinContestarColor"></button>
            <button type="button" style="height:40px; width:70px" class="sinContestarColor"></button>
          <button type="button" style="height:40px; width:70px" class="sinContestarColor"></button>
            <button type="button" style="height:40px; width:70px" class="sinContestarColor"></button>           
        </div></div>
    <br />
    <br />                    
        <div class="container-fluid" id="textopregunta"><p>Seleccione la palabra incorrecta</p>

        </div>
         <div id="centraropciones">       
        <div class="btn-group-vertical" id="opciones">

            <button  type="button" style="width:200px" id="answerA" class="botonRespuesta" >A. Run</button>
            <br />
             <br />
            <button  type="button" id="answerB" class="botonRespuesta">B. Try</button>
            <br />
             <br />
            <button type="button" style="width:200px" id="answerC" class="botonRespuesta">C. Slep</button>
            <br />
             <br />
            <button  type="button" style="width:200px" id="answerD" class="botonRespuesta">D. Wake</button>
            <br />
             <br />
            <button type="button" id="btnNext" style="width:84px">Next</button>
        </div></div>        
</asp:Content>
