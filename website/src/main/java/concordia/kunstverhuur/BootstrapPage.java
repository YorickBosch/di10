package concordia.kunstverhuur;

public class BootstrapPage {
	public static String HOME = "/ConcordiaKunstverhuur/index.jsp";
	public static String OVER = "/ConcordiaKunstverhuur/over.jsp";
	public static String COLLECTIE = "/ConcordiaKunstverhuur/collectie.jsp";
	public static String CONTACT = "/ConcordiaKunstverhuur/contact.jsp";
	public static String PROFIEL = "/ConcordiaKunstverhuur/profiel.jsp";
	
	public static String getHeader(String activePage) {
		
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
		+ "<a class=\"navbar-brand\" href=\""+HOME
		+ "\">Home</a></li>\n"
		+ "<li><a href=\""+OVER
		+ "\">Hoe het werkt</a></li>"
        + "<li><a href=\""+COLLECTIE
        + "\">Collectie</a></li>\n"
        + "<li><a href=\""+CONTACT
        + ">Contact</a></li>\n"
        + "</ul>\n"
        + "<!-- Sign-in -->\n"
        + "<form class=\"navbar-form navbar-right\" action=\"" + PROFIEL
        + "\" role=\"form\">\n"
        + "<div class=\"form-group\">\n"
        + "<input type=\"text\" placeholder=\"E-mail adres\" class=\"form-control\">"
        + "</div>\n"
        + "<div class=\"form-group\">\n"
        + "<input type=\"password\" placeholder=\"Wachtwoord\" class=\"form-control\">"
        + "</div>"
        + "<button type=\"submit\" class=\"btn btn-success\">Inloggen</button>"
        + "</form>"
        + "</div><!-- /.navbar-collapse -->"
        + "</div><!-- /.container-fluid -->"
        + "</nav>";

		return header;
	}
}
