<%@page import="concordia.kunstverhuur.StandardPage"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="includes/head.jsp" %>
	<title>Concordia Kunstverhuur :: Hoe</title>
</head>
<body>
<%
	out.write(StandardPage.getHeader("index", request));
%>
    <div class="container marketing">
      <div class="page-header">
        <h1>Concordia Kunstverhuur <small>Voor iedereen</small></h1>
      </div>
      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">
	  <div class="row featurette">
        <div class="col-md-4 col-md-offset-1">
          <img class="img-responsive" style="height: 256px" src="img/mandje.png" alt="Illustratie">
          <h2 class="featurette-heading">Aankopen <span class="text-muted">van een kunstwerk</span></h2>
          <p class="lead">De meeste werken van de kunstverhuur zijn te koop. De prijzen van de kunstwerken staan op de achterzijde van het werk. Voor de waarde van het werk geldt de op het moment van de aankoop geldende verkoopprijs. Zolang het werk is verhuurd wordt de prijs niet verhoogd.</p>
        </div>
        <div class="col-md-4 col-md-offset-2">
          <img class="img-responsive" src="http://www.huisjevanjeltje.nl/images/wait-green.png" alt="Illustratie">
          <h2 class="featurette-heading">Reserveringen <span class="text-muted">van een kunstwerk</span></h2>
          <p class="lead">Per abonnement kunnen twee kunstwerken worden gereserveerd. De reservering van een kunstwerk vervalt, wanneer de abonnee niet voor de vervaldatum reageert op het reserveringsbericht.</p>        
        </div>
      </div>
      <hr class="featurette-divider">
      <div class="row featurette">
        <div class="col-md-9">
          <h2 class="featurette-heading">Kooptegoed spaarabonnement <span class="text-muted">Huur &amp; spaar.</span></h2>
          <p class="lead">Kooptegoeden van het spaarabonnement kunnen, indien door de abonnee aan alle uit het reglement voortvloeiende en op hem/haar rustende verplichtingen is voldaan, uitsluitend worden besteed voor de aankoop van werken uit de kunstverhuur of in de kadowinkel van Concordia. Tot maximaal 3 jaar na opzegging van uw abonnement kunt u over uw kooptegoed beschikken. Daarna vervalt het kooptegoed.</p>
        </div>
        <div class="col-md-3">
          <img class="featurette-image img-responsive" src="http://www.fancyicons.com/download/?id=1097&t=png&s=256" alt="Een schilderij">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-3">
          <img class="featurette-image img-responsive" src="http://www.sintlodewijkscollegespoorwegstraat.be/slos/images/stories/Eigen/kalender.png" alt="Illustratie">
        </div>
        <div class="col-md-9">
          <h2 class="featurette-heading">Huurperiode <span class="text-muted">verlengen?</span></h2>
          <p class="lead">Voor alle abonnementen geldt voor een en hetzelfde kunstwerk een maximale huurperiode van 6 maanden. Bij overschrijding van de periode treedt er een boeteregeling in werking van &euro;20,- per maand. U kunt de verhuurperiode eenmalig met nog een periode van 6 maanden verlengen, mits het kunstwerk niet door een andere abonnee is gereserveerd. </p>
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-9">
          <h2 class="featurette-heading">Haal- en brengservice <span class="text-muted">Een extra dienst</span></h2>
          <p class="lead">Wanneer u niet in de gelegenheid bent zelf uw kunstwerken te vervoeren kunt u gebruik maken van onze haal- en breng service. Voor &euro;15,- per rit wordt uw kunstwerk thuis afgeleverd en/of opgehaald (binnen de gemeente Enschede). Voor bezorging buiten de gemeentegrens (met een maximum van 30 km) hanteren wij een toeslag van &euro;15,- per keer.</p>
        </div>
        <div class="col-md-3">
          <img class="featurette-image img-responsive" src="http://www.fancyicons.com/free-icons/108/transport/png/256/lorry_green_256.png" alt="Illustratie">
        </div>
      </div>
      <hr class="featurette-divider">

      
      <!-- /END THE FEATURETTES -->
    <% out.write(StandardPage.getFooter()); %>
  </body>
</html>
