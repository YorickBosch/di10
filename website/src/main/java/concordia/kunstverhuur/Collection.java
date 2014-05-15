package concordia.kunstverhuur;

import java.util.HashMap;

public class Collection {
	public static HashMap<String,Object> getArtworkFromDatabase(int ID) {
		HashMap<String,Object> artwork = new HashMap<String,Object>();
		if (ID == 0) {
			artwork.put("url", "/ConcordiaKunstverhuur/img/nachtwacht.jpg");
			artwork.put("naam", "Een Kunstwerk");
			artwork.put("abstract", "Ware klasse, een echte Rembrandt");
		}
		
		return artwork;
	}
	
	public static String getMainPageItem(int ID) {
		
		
		HashMap<String, Object> item = getArtworkFromDatabase(ID);
		String header = "";
		header += "<div class=\"col-sm-6 col-md-4\">\n"
				+ "<div class=\"thumbnail\">\n"
				+ "<img src=\""+(String) item.get("url")+"\" alt=\"...\">\n"
				+ "<div class=\"caption\">\n"
				+ "<h3>"+(String) item.get("naam")+"</h3>\n"
				+ "<p>"+(String) item.get("abstract")+"</p>\n"
				+ "<div class=\"btn-group\">\n"
				+ "<button type=\"button\" class=\"btn btn-primary\">Huur nu!</button>\n"
				+ "</div>\n"
				+ "<div class=\"btn-group\">\n"
				+ "<button type=\"button\" class=\"btn btn-default\">Reserveer</button>\n"
				+ "<button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\">\n"
                + "<span class=\"caret\"></span>\n"
                + "<span class=\"sr-only\">Meer...</span>\n"
                + "</button>\n"
                + "<ul class=\"dropdown-menu\" role=\"menu\">\n"
                + "<li role=\"presentation\" class=\"dropdown-header\">Toevoegen aan...</li>\n"
                + "<li><a href=\""+"#"+"\">Favorieten</a></li>\n"
                + "<li><a href=\""+"#"+"\">Collectie</a></li>\n"
                + "<li class=\"divider\"></li>\n"
                + "<li role=\"presentation\" class=\"dropdown-header\">Delen via...</li>\n"
                + "<li><a href=\""+"#"+"\">Twitter</a></li>\n"
                + "<li><a href=\""+"#"+"\">Facebook</a></li>\n"
                + "<li><a href=\""+"#"+"\">Google+</a></li>\n"
                + "<li><a href=\""+"#"+"\">E-mail</a></li>\n"
                + "</ul>\n</div>\n</div>\n</div>\n</div>\n";
		return header;
	}
}
