package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.Product;

public class ProductMapper implements RowMapper<Product> {

	@Override
	public Product mapRow(ResultSet resultSet) {
		try {
			Product product = new Product();
			product.setId(resultSet.getInt("product_id"));
			product.setName(resultSet.getString("product_name"));
			product.setDescription(resultSet.getString("product_des"));
			product.setPrice(resultSet.getFloat("product_price"));
			product.setSrc(resultSet.getString("product_img_source"));
			product.setType(resultSet.getString("product_type"));
			product.setBrand(resultSet.getString("product_brand"));
			return product;
		} catch (SQLException e) {
			return null;
		}
	}
}