package concordia.kunstverhuur;

import java.util.Calendar;

public class ArtworkBean {
	private int id;
	private String name;
	private short year;
	private String description;
	private String tags;
	private String style;
	private String period;
	private double price;
	private int series;
	private String arttype;
	private boolean isForSale;
	private String colour;
	private int height;
	private int width;
	private int depth;
	
	public ArtworkBean(int id, String name, short year, String description, 
			String tags, String style, String period, double price, int series,
			String arttype, boolean isForSale, String colour, int height, int width,
			int depth) {
		this.id = id;
		this.name = name;
		this.year = year;
		this.description = description;
		this.tags = tags;
		this.style = style;
		this.period = period;
		this.price = price;
		this.series = series;
		this.arttype = arttype;
		this.isForSale = isForSale;
		this.colour = colour;
		this.height = height;
		this.width = width;
		this.depth = depth;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public short getYear() {
		return year;
	}
	public void setYear(short year) {
		this.year = year;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSeries() {
		return series;
	}
	public void setSeries(int series) {
		this.series = series;
	}
	public String getArttype() {
		return arttype;
	}
	public void setArttype(String arttype) {
		this.arttype = arttype;
	}
	public boolean isForSale() {
		return isForSale;
	}
	public void setForSale(boolean isForSale) {
		this.isForSale = isForSale;
	}
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
}
