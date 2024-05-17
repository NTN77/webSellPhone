package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<Product> items;

	public Cart() {
		items = new ArrayList<>();
	}

	public void add(Product p) {
		for (Product item : items) {
			if (p.getId() == item.getId()) {
				item.setNumber(item.getNumber() + 1);
				return;
			}
		}
		items.add(p);
	}
	
	public void add(Product p, int quantity) {
		for (Product item : items) {
			if (p.getId() == item.getId()) {
				item.setNumber(quantity);
				return;
			}
		}
		items.add(p);
	}
	
	public void remove(int id) {
		for (Product item : items) {
			if (id == item.getId()) {
				items.remove(item);
				return;
			}
		}
	}

	public double getTotalAmount() {
		double amount = 0;
		for (Product item : items) {
			amount += item.getNumber() * item.getPrice();
		}
		return Math.round(amount * 100.0) / 100.0;
	}

	public List<Product> getItems() {
		return items;
	}

	public void setItems(List<Product> items) {
		this.items = items;
	}
}