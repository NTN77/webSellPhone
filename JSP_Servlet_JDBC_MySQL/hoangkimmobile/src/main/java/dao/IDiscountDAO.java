package dao;

import java.util.List;

import model.DiscountCoupon;

public interface IDiscountDAO extends GenericDAO<DiscountCoupon> {
	
	List<DiscountCoupon> getDiscountPrice(String code);
	
	int updateDiscountNumber(String code);
	
	int exists(String code);
	
	int used(String code, String email);

}