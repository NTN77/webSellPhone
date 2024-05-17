package service.impl;

import java.util.List;

import dao.IOrdersDAO;
import dao.impl.OrdersDAO;
import model.Orders;
import model.Product;
import service.IOrdersService;

public class OrdersService implements IOrdersService {
	private IOrdersDAO ordersDAO;

	public OrdersService() {
		this.ordersDAO = new OrdersDAO();
	}

	@Override
	public void insertOrder(Orders o) {
		Integer orderId = this.ordersDAO.insertOrder(o);
		List<Product> products = o.getLp();
		for (Product p : products) {
			System.out.println(p.getName() + ", " + p.getNumber());
			this.ordersDAO.insertOrdersDetail(orderId, p.getId(), p.getNumber(), p.getPrice());
		}
	}
}