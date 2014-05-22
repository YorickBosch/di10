<%@page import="concordia.kunstverhuur.StandardPage"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="nl">
  <head>
    <%@include file="includes/head.jsp" %>
	<title>Concordia Kunstverhuur :: Registreer</title>
  </head>

  <body>

    <%
	out.write(StandardPage.getHeader("index", request));
	%>
    
    <div class="container">
      <div class="page-header">
        <h1>Aanmelden <small>bij Concordia Kunstverhuur</small></h1>
      </div>
      <!-- START THE FORM -->
      <form class="form-horizontal" role="form" method="POST" action="<%=StandardPage.REGISTREER%>">
              <div class="form-group">
                <label for="firstName" class="col-sm-2 control-label">Naam</label>
                <div class="col-sm-5">
                  <input type="text" class="form-control" id="firstName" placeholder="Voornaam">
                </div>
                <div class="col-sm-5">
                <input type="text" class="form-control" id="lastName" placeholder="Achternaam">
                </div>
              </div>
              <div class="form-group">
                <label for="email" class="col-sm-2 control-label">E-mail adres</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="email" placeholder="voorbeeld@email.adres">
                </div>
              </div>
              <div class="form-group">
                <label for="password" class="col-sm-2 control-label">Wachtwoord</label>
                <div class="col-sm-5">
                  <input type="password" class="form-control" id="password" placeholder="Wachtwoord">
                </div>
                <div class="col-sm-5">
                  <input type="password" class="form-control" id="passwordCheck" placeholder="Opnieuw">
                </div>
              </div>
              <div class="form-group">
                <label for="street" class="col-sm-2 control-label">Adresgegevens</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="street" placeholder="Straatnaam">
                </div>
                <div class="col-sm-3">
                  <input type="text" class="form-control" id="nr" placeholder="Huisnummer + toevoeging">
                </div>
                <div class="col-sm-2 col-sm-offset-2">
                  <input type="text" class="form-control" id="postalcode" placeholder="Postcode">
                </div>
                <div class="col-sm-3">
                  <input type="text" class="form-control" id="city" placeholder="Plaatsnaam">
                </div>
              </div>
              
              <div class="form-group">
                <div class="checkbox col-sm-offset-2 col-sm-10">
                  <label>
                    <input name="acceptedTerms" type="checkbox"> Ik ga akkoord met de algemene voorwaarden
                  </label>
                </div>
              </div>
              <div class="col-sm-offset-2 col-sm-4">
                <button type="submit" class="btn btn-primary">Registreer</button>
              </div>
            </form>
      <!-- /END THE FORM -->
    </div> <!-- /container -->
    <!-- Footer -->
    <% out.write(StandardPage.getFooter()); %>
  </body>
</html>
