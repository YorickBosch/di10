package concordia.kunstverhuur;


import javax.servlet.http.HttpServletRequest;

public class StandardPage {
	public static String HOME = "/ConcordiaKunstverhuur/index.jsp";
	public static String HOE = "/ConcordiaKunstverhuur/hoe.jsp";
	public static String COLLECTIE = "/ConcordiaKunstverhuur/collectie.jsp";
	public static String CONTACT = "/ConcordiaKunstverhuur/contact.jsp";
	public static String LOGIN = "/ConcordiaKunstverhuur/login";
	public static String PROFIEL = "/ConcordiaKunstverhuur/profiel.jsp";
	public static String LOGINFAILED = "/ConcordiaKunstverhuur/loginfailed.jsp";
	
	public static String getHeader(String activePage, HttpServletRequest request){
		String home = "",hoe = "",collectie = "",contact = "";
		
		switch (activePage) {
		case "index": home = "class=\"active\" "; break;
		case "hoe": hoe = "class=\"active\" "; break;
		case "collectie": collectie = "class=\"active\" "; break;
		case "contact": contact = "class=\"active\" "; break;
		}
		
		String header = "";
		header += "<nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n"
		+ "<div class=\"container-fluid\">\n"
		+ "<div class=\"navbar-header\">\n"
		+ "<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n"
		+ "<span class=\"sr-only\">Navigatie in/uitschakelen</span>\n"
		+ "<span class=\"icon-bar\"></span>\n"
		+ "<span class=\"icon-bar\"></span>\n"
		+ "<span class=\"icon-bar\"></span>\n"
		+ "</button>\n"
		+ "<a class=\"navbar-brand\" href=\""+HOME+"\">Concordia Kunstverhuur</a>\n"
        + "</div>\n"
        + "<!-- Collect the nav links, forms, and other content for toggling -->\n"
        + "<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n"
        + "<ul class=\"nav navbar-nav\">\n"
		+ "<li><a "+ home +"href=\""+HOME
		+ "\">Home</a></li>\n"
		+ "<li><a "+ hoe +"href=\""+HOE
		+ "\">Hoe het werkt</a></li>"
        + "<li><a "+ collectie +"href=\""+COLLECTIE
        + "\">Collectie</a></li>\n"
        + "<li><a "+ contact +"href=\""+CONTACT
        + "\">Contact</a></li>\n"
        + "</ul>\n";
		UserBean user = (UserBean) request.getSession().getAttribute("current_user");
		if (user != null) {
			header += "<!-- Signed in -->\n"
			        + "<form class=\"navbar-form navbar-right\" method=\"POST\" action=\"" + LOGIN
			        + "\" role=\"form\">\n"
			        + "<div class=\"form-group\">\n"
			        + "<input type=\"hidden\" class=\"form-control\" name=\"logout\">\n"
			        + "</div>\n" 
			        + "<span>Ingelogd als <a href=\""+PROFIEL+"\">"+user.getUserName()+"</a></span>\n"
			        + "<button type=\"submit\" class=\"btn btn-success\">Uitloggen</button>\n"
			        + "</form>\n";
		} else {
			header += "<!-- Sign-in -->\n"
			        + "<form class=\"navbar-form navbar-right\" method=\"POST\" action=\"" + LOGIN
			        + "\" role=\"form\">\n"
			        + "<div class=\"form-group\">\n"
			        + "<input type=\"text\" placeholder=\"E-mail adres\" class=\"form-control\" name=\"user\">\n"
			        + "</div>\n"
			        + "<div class=\"form-group\">\n"
			        + "<input type=\"password\" placeholder=\"Wachtwoord\" class=\"form-control\" name=\"pass\">\n"
			        + "</div>\n"
			        + "<button type=\"submit\" class=\"btn btn-success\">Inloggen</button>\n"
			        + "</form>\n";
		}
			
		
        header += "</div><!-- /.navbar-collapse -->"
        + "</div><!-- /.container-fluid -->"
        + "</nav>";
		return header;
	}
	
	public static String getFooter() {
		String footer = "";
	    footer += "<!-- Footer -->\n"
	    		+ "<div id=\"footer\">\n"
	    		+ "<div class=\"container\">\n"
	    		+ "<p class=\"text-muted\">&copy; Concordia Kunstverhuur 2014</p>\n"
	    		+ "</div>\n</div>\n\n"
	    		+ "<!-- Bootstrap core JavaScript\n"
	    		+ "================================================== -->\n"
	    		+ "<!-- Placed at the end of the document so the pages load faster -->\n"
	    		+ "<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js\"></script> \n"
	    		+ "<script src=\"/ConcordiaKunstverhuur/js/bootstrap.min.js\"></script>\n"
	    		+ "<!-- Bootstrap plugin JavaScript -->\n"
	    		+ "<script src=\"/ConcordiaKunstverhuur/js/bootstrap-lightbox.min.js\"></script>";
		return footer;
	}
	
	
}
