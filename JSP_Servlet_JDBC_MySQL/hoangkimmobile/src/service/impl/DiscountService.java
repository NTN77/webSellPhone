package service.impl;

import java.util.List;

import dao.IDiscountDAO;
import dao.impl.DiscountDAO;
import model.DiscountCoupon;
import service.IDiscountService;

public class DiscountService implements IDiscountService {
	private IDiscountDAO discountDAO;
	
	public DiscountService() {
		this.discountDAO = new DiscountDAO();
	}

	@Override
	public double getDiscountPrice(String code) {
		List<DiscountCoupon> list = this.discountDAO.getDiscountPrice(code);
		if(list.isEmpty()) return 0.0;
		else return list.get(0).getPrice();
	}

	@Override
	public void updateDiscountNumber(String code) {
		this.discountDAO.updateDiscountNumber(code);
	}

	@Override
	public boolean exists(String code) {
		int count = this.discountDAO.exists(code);
		if(count == 0) return false; //không tồn tại
		else return true; //tồn tại
	}

	@Override
	public boolean used(String code, String email) {
		int count = this.discountDAO.used(code, email);
		if(count == 0) return false; //chưa dùng
		else return true; //dùng rồi
	}

	public static void main(String[] args) {
		DiscountService sv = new DiscountService();
//		System.out.println(new DiscountService().exists("NGUOIMOI"));
		System.out.println(sv.used("NGUOIMOI", "5664371@student.tdtu.edu.vn"));
	}
}