package dao.impl;

import dao.IOrdersDAO;
import model.Orders;

public class OrdersDAO extends AbstractDAO<Orders> implements IOrdersDAO {

	@Override
	public Integer insertOrder(Orders o) {
		String sql = "insert into orders(user_email, user_name, order_status, order_discount_code, order_address) values(?,?,?,?,?)";
		return insert(sql, o.getUsermail(), o.getUsername(), o.getStatus(), o.getDiscount(), o.getAddress());
	}
	
	@Override
	public Integer insertOrdersDetail(Integer orderId, int productId, int amount, double price) {
		String sql="insert into orders_detail(order_id, product_id, amount_product, price_product) values(?,?,?,?)";
		return insert(sql, orderId, productId, amount, price);
	}
}