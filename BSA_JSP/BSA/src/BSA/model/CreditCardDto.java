package BSA.model;

public class CreditCardDto {
	private String name_on_card;
	private String card_number;
	private String expiry_year;
	private String expiry_month;
	private String csv_number;
	public String getName_on_card() {
		return name_on_card;
	}
	public void setName_on_card(String name_on_card) {
		this.name_on_card = name_on_card;
	}
	public String getCard_number() {
		return card_number;
	}
	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
	public String getExpiry_year() {
		return expiry_year;
	}
	public void setExpiry_year(String expiry_year) {
		this.expiry_year = expiry_year;
	}
	public String getExpiry_month() {
		return expiry_month;
	}
	public void setExpiry_month(String expiry_month) {
		this.expiry_month = expiry_month;
	}
	public String getCsv_number() {
		return csv_number;
	}
	public void setCsv_number(String csv_number) {
		this.csv_number = csv_number;
	}
	
	
}
