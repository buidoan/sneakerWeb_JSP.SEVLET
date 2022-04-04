package com.example.banhang.entity;

public class Product {
	private int id;
	private String name;
	private String image;
	private double price;
	private int categoryid;
	private String title;
	private String description;
	private int amount;

	public Product(int id, String name, String image, double price, int categoryid, String title, String description) {

		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.categoryid = categoryid;
		this.title = title;
		this.description = description;
	}
	public Product(int id, String name, String image, double price, int categoryid, String title, String description, int amount ) {

		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.categoryid = categoryid;
		this.title = title;
		this.description = description;
		this.amount=amount;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}

}
