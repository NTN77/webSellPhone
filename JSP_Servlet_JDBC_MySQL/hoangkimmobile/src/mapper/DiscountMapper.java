package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.DiscountCoupon;

public class DiscountMapper implements RowMapper<DiscountCoupon> {

	@Override
	public DiscountCoupon mapRow(ResultSet resultSet) {
		try {
			DiscountCoupon coupon = new DiscountCoupon();
			coupon.setCode(resultSet.getString("code"));
			coupon.setNumber(resultSet.getInt("number"));
			coupon.setPrice(resultSet.getDouble("price"));
			coupon.setStartDate(resultSet.getTimestamp("start_date"));
			coupon.setDueDate(resultSet.getTimestamp("due_date"));
			return coupon;
		} catch (SQLException e) {
			return null;
		}
	}
}