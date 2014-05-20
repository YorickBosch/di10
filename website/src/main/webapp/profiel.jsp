<%@page import="concordia.kunstverhuur.UserBean"%>
<%@page import="concordia.kunstverhuur.Collectie"%>
<%@page import="concordia.kunstverhuur.StandardPage"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
UserBean user = (UserBean) request.getSession().getAttribute("current_user");
%>


<!DOCTYPE html>
<html>
<head>
	<%@include file="includes/head.jsp" %>
</head>
<body>
	<%
		out.write(StandardPage.getHeader("index", request));
	%>
    
    <div class="container">
      <div class="page-header">
        <h1>Profiel <small>bekijken en bewerken</small></h1>
      </div>
      <!-- START THE TABS -->
      <!-- Nav tabs -->
      <ul class="nav nav-tabs">
        <li class="active"><a href="#profiel" data-toggle="tab">Profiel</a></li>
        <li><a href="#collecties" data-toggle="tab">Mijn Collecties</a></li>
        <li class="disabled"><a href="#/geschiedenis" data-toggle="tab">Geschiedenis</a></li>
        <li class="disabled"><a href="#/voorkeuren" data-toggle="tab">Voorkeuren</a></li>
      </ul>

      <!-- Tab panes -->
      <div class="tab-content">
        <div class="tab-pane fade in active" id="profiel">
          <h2>Profiel</h2>
            <form class="form-horizontal" role="form">
              <%
              if(user.getBedrijfsNaam() != null) {%>
           	  <div class="form-group">
                <label for="companyName" class="col-sm-2 control-label">Bedrijfsnaam</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="companyName" value="<%=user.getBedrijfsNaam()%>" disabled>
                </div>
              </div>
              <% } %>
              <div class="form-group">
                <label for="firstName" class="col-sm-2 control-label">Naam</label>
                <div class="col-sm-5">
                  <input type="text" class="form-control" id="firstName" value="<%=user.getVoorNaam()%>" disabled>
                </div>
                <div class="col-sm-5">
                  <input type="text" class="form-control" id="lastName" value="<%=user.getAchterNaam()%>" disabled>
                </div>
              </div>
              <div class="form-group">
                <label for="email" class="col-sm-2 control-label">E-mail adres</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="email" placeholder="<%=user.getEmail()%>" disabled>
                </div>
              </div>
              <div class="form-group">
                <label for="street" class="col-sm-2 control-label">Adresgegevens</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="street" placeholder="Straatnaam" value="<%=user.getAdres().get("straat")%>" disabled>
                </div>
                <div class="col-sm-3">
                  <input type="text" class="form-control" id="nr" value="<%=user.getAdres().get("huisnummer")%>" disabled>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2 col-sm-offset-2">
                  <input type="text" class="form-control" id="postalcode" value="<%=user.getAdres().get("postcode")%>" disabled>
                </div>
                <div class="col-sm-3">
                  <input type="text" class="form-control" id="city" value="<%=user.getAdres().get("stad")%>" disabled>
                </div>
              </div>
              <div class="col-sm-offset-2 col-sm-4">
                <button type="submit" class="btn btn-primary" disabled>Toepassen</button>
                <button type="reset" class="btn btn-default" disabled>Reset</button>
              </div>
            </form>
        </div>
        <div class="tab-pane fade" id="collecties">
          <h2>Mijn Collecties</h2>
          <h3>Voorbeeldcollectie</h3>
          <div class="row">
          <% 
          for (int i = 0; i < 12; i++) {
        	  out.write(Collectie.getMainPageItem(0, 4));
          }
          %>
          </div>
        </div>
        <div class="tab-pane fade disabled" id="geschiedenis">
          <h2>Mijn huurgeschiedenis</h2>
        </div>
        <div class="tab-pane fade disabled" id="voorkeuren">
          <h2>Mijn voorkeuren</h2>
        </div>
      </div>
      <!-- END OF TABS -->
    </div> <!-- /container -->
    <!-- Footer -->
    <div id="footer">
      <div class="container">
        <p class="text-muted">&copy; Concordia Kunstverhuur 2014</p>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
