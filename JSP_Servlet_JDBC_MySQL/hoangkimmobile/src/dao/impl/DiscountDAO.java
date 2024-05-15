package dao.impl;

import java.util.List;

import dao.IDiscountDAO;
import mapper.DiscountMapper;
import model.DiscountCoupon;

public class DiscountDAO extends AbstractDAO<DiscountCoupon> implements IDiscountDAO {

	@Override
	public List<DiscountCoupon> getDiscountPrice(String code) {
		String sql = "select * from discount_coupon where code=?";
		return query(sql, new DiscountMapper(), code);
	}

	@Override
	public int updateDiscountNumber(String code) {
		String sql="update discount_coupon set number=number-1 where code=?";
		return update(sql, code);
	}

	@Override
	public int exists(String code) {
		String sql = "select count(*) as count from discount_coupon where code=? and number > 0 and now() between start_date and due_date";
		System.out.println("hello yeah 123");
		return count(sql, code);
	}

	@Override
	public int used(String code, String email) {
		String sql = "select count(*) as count from orders where order_discount_code is not null and user_email is not null and order_discount_code=? and user_email=?";
		System.out.println("hello yeah 345");
		return count(sql, code, email);
	}
	
	public static void main(String[] args) {
		DiscountDAO dao = new DiscountDAO();
		System.out.println(dao.exists("sale1"));
//		System.out.println(dao.used("NGUOIMOI", "5664371@student.tdtu.edu.vn"));
	}
}