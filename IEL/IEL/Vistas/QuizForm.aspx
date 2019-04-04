<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="QuizForm.aspx.cs" Inherits="IEL.Vistas.QuizForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   
 
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>   
     <link rel="stylesheet" href="CSS/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="JS/bootstrap.min.js"></script>

      <link rel="stylesheet" type="text/css" href="CSS/CSSQuiz.css"/>
 
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
        <div class="btn-group-vertical" >

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
