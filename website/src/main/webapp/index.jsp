<%@page import="concordia.kunstverhuur.Collectie"%>
<%@page import="concordia.kunstverhuur.StandardPage"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="includes/head.jsp" %>
</head>
<body>
<%
	out.write(StandardPage.getHeader("index", request));
%>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Concordia Kunstverhuur</h1>
        <p>Concordia's kunstverhuur is vergelijkbaar met een bibliotheek. Met een jaarabonnement kun je om het half jaar een nieuw werk uit de collectie huren. Je kunt de huurperiode verlengen en er is geen aankoopverplichting.</p>
        <p><a href="<%=StandardPage.OVER%>" class="btn btn-primary btn-lg" role="button">Meer weten? &raquo;</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-sm-6 col-md-4 col-lg-4">
          <h2>Voor jou</h2>
          <p>Altijd al een uniek schilderij willen hebben? Dat kan! Voor slechts € 7,50 per maand huur je een uniek en origineel kunstwerk bij Concordia. Ben je er op uitgekeken, dan kies je iets nieuws uit onze omvangrijke collectie. Raak je aan het werk gehecht, dan kun je het kunstwerk aanschaffen.</p>
          <p><a class="btn btn-default" href="<%=StandardPage.OVER%>" role="button">Meer informatie &raquo;</a></p>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <h2>Voor u</h2>
          <p>De bedrijvencollectie onderscheidt zich door groter en vaak seriematig werk, uitstekend geschikt voor ontvangst- en vergaderruimten. De kunstwerken geven een meerwaarde aan uw kantoorinrichting in representatief opzicht richting relaties. Bovendien gaat er een inspirerende werking vanuit op uw personeel.</p>
          <p><a class="btn btn-default" href="<%=StandardPage.OVER%>" role="button">Meer informatie &raquo;</a></p>
       </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <h2>Voor kunstenaars</h2>
          <p>Laat een groot publiek kennis maken met jouw kunst. Verhuur je werk via Concordia's kunstverhuur. Concordia is altijd op zoek naar nieuw werk en nieuwe kunstenaars voor uitbreiding van haar kunstverhuurcollectie.</p>
          <p><a class="btn btn-default" href="<%=StandardPage.OVER%>" role="button">Meer informatie &raquo;</a></p>
        </div>
      </div>
	<div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Een greep uit de collectie</h3>
        </div>
        <div class="panel-body">
          <div class="row">
          <%
          for (int i = 0; i < 6; i++) {
        	  out.write(Collectie.getMainPageItem(0, 3));
          }
          %>
          
          </div>
        </div>
      </div>
    </div>
    <% out.write(StandardPage.getFooter()); %>
</body>
</html>