package model;

import java.sql.Timestamp;

public class DiscountCoupon {
	private String code;
	private int number;
	private double price;
	private Timestamp startDate;
	private Timestamp dueDate;

	public DiscountCoupon() {
	}

	public DiscountCoupon(String code, int number, double price, Timestamp startDate, Timestamp dueDate) {
		super();
		this.code = code;
		this.number = number;
		this.price = price;
		this.startDate = startDate;
		this.dueDate = dueDate;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Timestamp getStartDate() {
		return startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	public Timestamp getDueDate() {
		return dueDate;
	}

	public void setDueDate(Timestamp dueDate) {
		this.dueDate = dueDate;
	}	
}